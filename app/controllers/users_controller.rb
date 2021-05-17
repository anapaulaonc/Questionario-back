class UsersController < ApplicationController
  before_action :authorize_request, except: %i[create forgot reset show]
  before_action :find_user, except: %i[create index forgot reset]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  #mailer

  # funcao para gerar o token
  def forgot
    if params[:email].blank?
      return render json: {error: 'Email está em branco'}
    end

    user = User.find_by(email: params[:email])

    if user.present?
      user.generate_password_token!
      UserMailer.forgot_password_email(user).deliver_later
      render json: {status: 'ok'}, status: :ok
    else
      render json: {error: ['Email não foi achado, por favor confira seu email.']}, status: :not_found
    end
  end

  #Função utilizada para resetar a senha
  #
  # == Parameters:
  #
  # == Returns:
  # Uma ação que envia o email caso tudo esteja correto.
  def reset
    token = params[:token].to_s
    email = params[:email]
  
    if token.blank?
      return render json: {error: 'Token está em branco'}
    end
  
    if email.blank?
      return render json: {error: 'Email esta em branco'}
    end
  
    user = User.find_by(email: params[:email])
  
    if user.present? && user.password_token_valid?
      if user.reset_password!(params[:password])
        UserMailer.reset_password_email(user).deliver_now
        render json: {status: 'ok'}, status: :ok
      else
        render json: {error: user.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {error:  ['Token não está valido. Tente novamente']}, status: :not_found
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_user
      @user = User.find_by!(id: params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { error: { message: 'User not found' } }, status: :not_found
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
