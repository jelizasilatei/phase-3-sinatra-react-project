class RenameBeaticiansToBeauticians < ActiveRecord::Migration[6.1]
  def change
    rename_table :beaticians, :beauticians
  end
end
