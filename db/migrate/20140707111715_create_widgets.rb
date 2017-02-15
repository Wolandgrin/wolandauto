class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :name
      t.float :price
      t.float :interest
      t.integer :duration
      t.integer :stock

      t.timestamps
    end
  end
end
