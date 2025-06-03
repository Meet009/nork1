class RenameCertificationColumn < ActiveRecord::Migration[8.0]
  def change
    rename_column :certficates, :award_name, :cert_name
  end
end
