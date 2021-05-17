class DiscursiveAnswersController < ApplicationController
  before_action :set_discursive_answer, only: [:show, :update, :destroy]

  # GET /discursive_answers
  def index
    @discursive_answers = DiscursiveAnswer.all

    render json: @discursive_answers
  end

  # GET /discursive_answers/1
  def show
    render json: @discursive_answer
  end

  # POST /discursive_answers
  def create
    @discursive_answer = DiscursiveAnswer.new(discursive_answer_params)

    if @discursive_answer.save
      render json: @discursive_answer, status: :created, location: @discursive_answer
    else
      render json: @discursive_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /discursive_answers/1
  def update
    if @discursive_answer.update(discursive_answer_params)
      render json: @discursive_answer
    else
      render json: @discursive_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /discursive_answers/1
  def destroy
    @discursive_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discursive_answer
      @discursive_answer = DiscursiveAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def discursive_answer_params
      params.require(:discursive_answer).permit(:text, :discursive_question_id, :survey_id, :email)
    end
end
