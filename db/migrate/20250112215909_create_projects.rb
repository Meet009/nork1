class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :heading
      t.text :project_info
      t.string :links

      t.timestamps
    end
  end
end
