class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :beautician_id
      t.integer :service_id
      t.timestamps
    end
  end
end
