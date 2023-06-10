class Client < ActiveRecord::Base
    has_many :appointments
    has_many :beauticians, through: :appointments
    has_many :services, through: :appointments
end