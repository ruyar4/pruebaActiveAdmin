class FixColumn < ActiveRecord::Migration
  def change
  	rename_column :instalations, :gpsandsensors_id, :gpsandsensor_id
  end
end
