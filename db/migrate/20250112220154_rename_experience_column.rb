class RenameExperienceColumn < ActiveRecord::Migration[8.0]
  def change
    rename_column :experiences, :info, :exp_info
  end
end
