class AddAttrToRunner < ActiveRecord::Migration[5.0]
  def change
    add_column :runners, :fname, :string
    add_column :runners, :lname, :string
    add_column :runners, :uname, :string
    add_column :runners, :birth_date, :date
  end
end
