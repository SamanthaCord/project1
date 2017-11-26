class CreateBenefitsMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :benefits_menus, :id => false do |t|
      t.integer :benefit_id
      t.integer :menu_id
    end
  end
end
