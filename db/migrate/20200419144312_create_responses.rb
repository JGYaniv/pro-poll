class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.integer :choice_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end

    add_index :responses, :choice_id
    add_index :responses, :user_id
  end
end
