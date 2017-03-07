class AddContactToJuans < ActiveRecord::Migration[5.0]
  def change
    add_column :juans, :contact_number, :integer
  end
end
