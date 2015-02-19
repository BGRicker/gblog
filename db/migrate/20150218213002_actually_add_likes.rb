class ActuallyAddLikes < ActiveRecord::Migration
  def change
    add_column :likes, :user_id, :string
    add_column :likes, :post_id, :string
  end
end
