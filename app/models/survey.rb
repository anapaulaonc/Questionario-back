class Survey < ApplicationRecord
  has_many :boolean_questions, dependent: :destroy

  def set_boolean_question
    self.boolean_questions
  end

end

