class CreateSkills < ActiveRecord::Migration[8.0]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.references :about, null: false, foreign_key: true

      t.timestamps
    end
  end
end
