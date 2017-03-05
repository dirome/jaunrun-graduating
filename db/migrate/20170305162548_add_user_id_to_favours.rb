class AddUserIdToFavours < ActiveRecord::Migration[5.0]
  def change
    add_column :favours, :juan_id, :integer
  end
end
