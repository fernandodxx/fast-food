class CreateMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :menus do |t|
      t.string :title
      t.string :description
      t.decimal :price, precision: 8, scale: 2
      t.string :image_url

      t.timestamps
    end
  end
end
