class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :postal_address
      t.string :encrypted_password
      t.integer :rating
      t.text :description
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
