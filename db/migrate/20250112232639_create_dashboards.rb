class Createdashboard < ActiveRecord::Migration[8.0]
  def change
    create_table :dashboard do |t|
      t.timestamps
    end
  end
end
