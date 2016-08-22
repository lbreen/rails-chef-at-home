class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :photo
      t.integer :price
      t.integer :preparation_time
      t.integer :min_guests
      t.integer :mex_guests
      t.text :starter
      t.text :main
      t.text :dessert
      t.string :category

      t.timestamps null: false
    end
  end
end
