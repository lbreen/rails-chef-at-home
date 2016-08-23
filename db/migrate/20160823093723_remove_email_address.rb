class RemoveEmailAddress < ActiveRecord::Migration[5.0]
  def change
    remove_column :user, :email_address
  end
end
