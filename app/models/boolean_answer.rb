class BooleanAnswer < ApplicationRecord
  belongs_to :boolean_question
  belongs_to :survey
end
