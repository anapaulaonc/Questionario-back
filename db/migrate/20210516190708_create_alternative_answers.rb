class CreateAlternativeAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :alternative_answers do |t|
      t.string :text
      t.references :alternative_question, null: false, foreign_key: true
      t.references :survey, null: false, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
