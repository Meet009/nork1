class CreateAwards < ActiveRecord::Migration[8.0]
  def change
    create_table :awards do |t|
      t.string :award_name
      t.references :about, null: false, foreign_key: true

      t.timestamps
    end
  end
end
