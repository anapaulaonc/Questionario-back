class Survey < ApplicationRecord
  has_many :boolean_questions, dependent: :destroy
  has_many :alternative_questions, dependent: :destroy
  has_many :discursive_questions, dependent: :destroy
  belongs_to :user

  

end

