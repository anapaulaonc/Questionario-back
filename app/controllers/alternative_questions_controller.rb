class AlternativeQuestionsController < ApplicationController
  before_action :set_alternative_question, only: [:show, :update, :destroy]

  # GET /alternative_questions
  def index
    @alternative_questions = AlternativeQuestion.all

    render json: @alternative_questions
  end

  # GET /alternative_questions/1
  def show
    render json: @alternative_question
  end

  # POST /alternative_questions
  def create
    @alternative_question = AlternativeQuestion.new(alternative_question_params)

    if @alternative_question.save
      render json: @alternative_question, status: :created, location: @alternative_question
    else
      render json: @alternative_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alternative_questions/1
  def update
    if @alternative_question.update(alternative_question_params)
      render json: @alternative_question
    else
      render json: @alternative_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alternative_questions/1
  def destroy
    @alternative_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alternative_question
      @alternative_question = AlternativeQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def alternative_question_params
      params.require(:alternative_question).permit(:title, :answer, :survey_id, :questionA, :questionB, :questionC, :questionD )
    end
end
