class AddColumnToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :email, :string
    add_column :clients, :phone_number, :interger
  end
end
