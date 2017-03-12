class AddAttributesToJuan < ActiveRecord::Migration[5.0]
  def change
    add_column :juans, :first_name, :string
    add_column :juans, :last_name, :string
    add_column :juans, :contact_number, :string
  end
end
