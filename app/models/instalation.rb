class Instalation < ActiveRecord::Base
	belongs_to :vehicle
	belongs_to :gpsandsensor
end
