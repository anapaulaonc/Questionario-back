class BooleanAnswersController < ApplicationController
  before_action :set_boolean_answer, only: [:show, :update, :destroy]

  # GET /boolean_answers
  def index
    @boolean_answers = BooleanAnswer.all

    render json: @boolean_answers
  end

  # GET /boolean_answers/1
  def show
    render json: @boolean_answer
  end

  # POST /boolean_answers
  def create
    @boolean_answer = BooleanAnswer.new(boolean_answer_params)

    if @boolean_answer.save
      render json: @boolean_answer, status: :created, location: @boolean_answer
    else
      render json: @boolean_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boolean_answers/1
  def update
    if @boolean_answer.update(boolean_answer_params)
      render json: @boolean_answer
    else
      render json: @boolean_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /boolean_answers/1
  def destroy
    @boolean_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boolean_answer
      @boolean_answer = BooleanAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def boolean_answer_params
      params.require(:boolean_answer).permit(:answer, :boolean_question_id, :survey_id, :email)
    end
end
