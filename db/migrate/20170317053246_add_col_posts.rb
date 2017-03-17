class AddColPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :user_id, :integer
  	add_column :responses, :user_id, :integer
  end
end
