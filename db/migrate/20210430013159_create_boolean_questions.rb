class CreateBooleanQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :boolean_questions do |t|
      t.string :title
      t.boolean :answer
      t.references :survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
