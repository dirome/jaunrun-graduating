class AddLocationToRunners < ActiveRecord::Migration[5.0]
  def change
    add_column :runners, :location, :string
  end
end
