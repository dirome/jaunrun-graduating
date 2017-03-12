class RemoveJuanIdFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :juan_id, :string
  end
end
