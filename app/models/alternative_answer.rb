class AlternativeAnswer < ApplicationRecord
  belongs_to :alternative_question
  belongs_to :survey
end
