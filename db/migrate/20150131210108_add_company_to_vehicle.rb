class AddCompanyToVehicle < ActiveRecord::Migration
  def change
    add_reference :vehicles, :company, index: true
    add_foreign_key :vehicles, :companies
  end
end
