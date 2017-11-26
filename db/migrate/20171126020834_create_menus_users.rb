class CreateMenusUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :menus_users, :id => false do |t|
      t.integer :menu_id
      t.integer :user_id
    end
  end
end
