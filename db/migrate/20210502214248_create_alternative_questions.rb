class CreateAlternativeQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :alternative_questions do |t|
      t.string :title
      t.string :questionA
      t.string :questionB
      t.string :questionC
      t.string :questionD
      t.integer :answer
      t.references :survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
