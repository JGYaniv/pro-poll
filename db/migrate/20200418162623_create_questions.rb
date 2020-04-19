class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :text, null: false
      t.belongs_to :poll

      t.timestamps
    end
  end
end
