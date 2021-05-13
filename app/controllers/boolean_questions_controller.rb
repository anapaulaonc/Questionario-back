class BooleanQuestionsController < ApplicationController
  before_action :set_boolean_question, only: [:show, :update, :destroy]

  # GET /boolean_questions
  def index
    @boolean_questions = BooleanQuestion.all

    render json: @boolean_questions
  end

  # GET /boolean_questions/1
  def show
    render json: @boolean_question
  end

  # POST /boolean_questions
  def create
    @boolean_question = BooleanQuestion.new(boolean_question_params)

    if @boolean_question.save
      render json: @boolean_question, status: :created, location: @boolean_question
    else
      render json: @boolean_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boolean_questions/1
  def update
    if @boolean_question.update(boolean_question_params)
      render json: @boolean_question
    else
      render json: @boolean_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /boolean_questions/1
  def destroy
    @boolean_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boolean_question
      @boolean_question = BooleanQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def boolean_question_params
      params.require(:boolean_question).permit(:title, :answer, :survey_id)
    end
end
