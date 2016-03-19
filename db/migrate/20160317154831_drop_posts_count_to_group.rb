class DropPostsCountToGroup < ActiveRecord::Migration
  def change
  	remove_column :groups, :posts_count, :integer
  end
end
