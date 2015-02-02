class AddInstalationToGpsandsensor < ActiveRecord::Migration
  def change
    add_reference :gpsandsensors, :instalation, index: true
    add_foreign_key :gpsandsensors, :instalations
  end
end
