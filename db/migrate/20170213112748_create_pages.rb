class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, null: false, default: ''
      t.string :description, null: false, default: ''

      t.timestamps null: false
    end
  end
end
