class CreateExperiences < ActiveRecord::Migration[8.0]
  def change
    create_table :experiences do |t|
      t.string :comp_name
      t.datetime :start_date
      t.datetime :end_date
      t.text :info

      t.timestamps
    end
  end
end
