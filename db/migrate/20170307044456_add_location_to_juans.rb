class AddLocationToJuans < ActiveRecord::Migration[5.0]
  def change
    add_column :juans, :location, :string
  end
end
