class RemoveCol < ActiveRecord::Migration
  def change
  	remove_column :posts, :answer
  	
  end
end
