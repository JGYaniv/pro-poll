class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.string :title
      # t.has_many :questions
      t.belongs_to :user
      t.timestamps
    end
  end
end
