class RemoveRating < ActiveRecord::Migration[5.0]
  def change
    remove_column :user, :rating
  end
end
