FactoryBot.define do
  factory :alternative_answer do
    text { "MyString" }
    alternative_question { nil }
    survey { nil }
    email { "MyString" }
  end
end
