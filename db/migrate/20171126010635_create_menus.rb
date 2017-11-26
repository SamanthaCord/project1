class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.text :name
      t.text :ingredients
      t.text :price
      t.integer :size
      t.integer :weather
      t.timestamps
    end
  end
end
