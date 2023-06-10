class Appointment < ActiveRecord::Base
    belongs_to :client
    belongs_to :beautician
    belongs_to :service
end