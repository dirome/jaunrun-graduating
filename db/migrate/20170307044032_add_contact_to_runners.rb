class AddContactToRunners < ActiveRecord::Migration[5.0]
  def change
    add_column :runners, :contact_number, :integer
  end
end
