class AddAttributesToRunner < ActiveRecord::Migration[5.0]
  def change
    add_column :runners, :first_name, :string
    add_column :runners, :last_name, :string
    add_column :runners, :contact_number, :string
  end
end
