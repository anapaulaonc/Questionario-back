class DiscursiveAnswer < ApplicationRecord
  belongs_to :discursive_question
  belongs_to :survey
end
