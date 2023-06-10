class Service < ActiveRecord::Base
    has_many :appointments
    has_many :clients, through: :appointments
    has_many :beauticians, through: :appointments
end