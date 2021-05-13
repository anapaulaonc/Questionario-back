class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references :survey, null: false, foreign_key: true
      t.boolean :boolean_answer
      t.string :alternative_answer
      t.text :discursive_answer

      t.timestamps
    end
  end
end
