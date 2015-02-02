class AddVehicleToInstalation < ActiveRecord::Migration
  def change
    add_reference :instalations, :vehicle, index: true
    add_foreign_key :instalations, :vehicles
  end
end
