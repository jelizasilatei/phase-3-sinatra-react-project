class CreateBeauticians < ActiveRecord::Migration[6.1]
  def change
    create_table :beaticians do |t|
      t.string :name
      t.timestamps
    end
  end
end
