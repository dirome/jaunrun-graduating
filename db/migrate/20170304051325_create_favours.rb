class CreateFavours < ActiveRecord::Migration[5.0]
  def change
    create_table :favours do |t|
      t.string :job_title
      t.string :job_location
      t.string :job_description

      t.timestamps
    end
  end
end
