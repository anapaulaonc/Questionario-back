class AlternativeAnswersController < ApplicationController
  before_action :set_alternative_answer, only: [:show, :update, :destroy]

  # GET /alternative_answers
  def index
    @alternative_answers = AlternativeAnswer.all

    render json: @alternative_answers
  end

  # GET /alternative_answers/1
  def show
    render json: @alternative_answer
  end

  # POST /alternative_answers
  def create
    @alternative_answer = AlternativeAnswer.new(alternative_answer_params)

    if @alternative_answer.save
      render json: @alternative_answer, status: :created, location: @alternative_answer
    else
      render json: @alternative_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alternative_answers/1
  def update
    if @alternative_answer.update(alternative_answer_params)
      render json: @alternative_answer
    else
      render json: @alternative_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alternative_answers/1
  def destroy
    @alternative_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alternative_answer
      @alternative_answer = AlternativeAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def alternative_answer_params
      params.require(:alternative_answer).permit(:text, :alternative_question_id, :survey_id, :email)
    end
end
