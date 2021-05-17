class CreateBooleanAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :boolean_answers do |t|
      t.boolean :answer
      t.references :boolean_question, null: false, foreign_key: true
      t.references :survey, null: false, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
