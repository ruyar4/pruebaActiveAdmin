class Vehicle < ActiveRecord::Base
	has_many :drivers
	belongs_to :company
	belongs_to :instalation
end
