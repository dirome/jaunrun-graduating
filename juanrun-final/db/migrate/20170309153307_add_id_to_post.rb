class AddIdToPost < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :juan, foreign_key: true
  end
end
