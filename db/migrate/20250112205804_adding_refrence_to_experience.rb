class AddingRefrenceToExperience < ActiveRecord::Migration[8.0]
  def change
    add_reference :experiences, :about, foreign_key: true
  end
end
