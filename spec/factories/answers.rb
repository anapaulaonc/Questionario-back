FactoryBot.define do
  factory :answer do
    boolean_answer { false }
    alternative_answer { "MyString" }
    discursive_answer { "MyText" }
  end
end
