class CreateAnswerChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_choices do |t|
      t.string :text
      t.belongs_to :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
