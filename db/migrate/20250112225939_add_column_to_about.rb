class AddColumnToAbout < ActiveRecord::Migration[8.0]
  def change
    add_reference :abouts, :user, foreign_key: true, null: false
  end
end
