class AlternativeQuestion < ApplicationRecord
  belongs_to :survey

  enum answer: {A: 0, B: 1, C: 2, D: 3}

end
