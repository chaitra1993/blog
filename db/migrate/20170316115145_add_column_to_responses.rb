class AddColumnToResponses < ActiveRecord::Migration
  def change
  	add_column :responses, :post_id, :integer
  end
end
