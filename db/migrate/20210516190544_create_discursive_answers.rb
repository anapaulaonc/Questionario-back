class CreateDiscursiveAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :discursive_answers do |t|
      t.text :text
      t.references :discursive_question, null: false, foreign_key: true
      t.references :survey, null: false, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
