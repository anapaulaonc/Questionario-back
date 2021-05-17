FactoryBot.define do
  factory :boolean_answer do
    answer { false }
    boolean_question { nil }
    survey { nil }
    email { "MyString" }
  end
end
