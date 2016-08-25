class RemovePhotosFromMenus < ActiveRecord::Migration[5.0]
  def change
    remove_column :menus, :photo
  end
end
