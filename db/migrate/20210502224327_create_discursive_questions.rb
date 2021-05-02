class CreateDiscursiveQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :discursive_questions do |t|
      t.string :title
      t.references :survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
