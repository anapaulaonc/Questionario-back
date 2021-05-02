class Survey < ApplicationRecord
  has_many :boolean_questions, dependent: :destroy
  has_many :alternative_questions, dependent: :destroy
  has_many :discursive_questions, dependent: :destroy

  def set_boolean_question
    self.boolean_questions
  end

  def set_alternative_question
    self.alternative_questions
  end

  def set_discursive_question
    self.discursive_questions
  end

end

