FactoryBot.define do
  factory :discursive_answer do
    text { "MyText" }
    discursive_question { nil }
    survey { nil }
    email { "MyString" }
  end
end
