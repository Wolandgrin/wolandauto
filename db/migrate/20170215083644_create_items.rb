class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.float :interest
      t.integer :duration
      #t.integer :user_id
      t.references :users, foreign_key: true
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
    add_index :items, [:user_id, :created_at]
  end
end
