class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :available_slots
      t.integer :price
      t.integer :client_id
      t.timestamps
    end
  end
end
