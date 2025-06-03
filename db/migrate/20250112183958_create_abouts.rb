class CreateAbouts < ActiveRecord::Migration[8.0]
  def change
    create_table :abouts do |t|
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
