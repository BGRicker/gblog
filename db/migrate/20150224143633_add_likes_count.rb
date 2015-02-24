class AddLikesCount < ActiveRecord::Migration
  def self.up
    add_column :posts, :likes_count, :integer, :default => 0

    Post.reset_column_information
    Post.all.each do |p|
      p.update_attribute :likes_count, p.likes.length
    end
  end

  def self.down
    remove_column :posts, :likes_count
  end
end
