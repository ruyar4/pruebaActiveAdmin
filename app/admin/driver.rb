ActiveAdmin.register Driver do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :name, :rut, :phone, :vehicle_id

  index do
    column :id
    column :name
    column :rut
    column :phone
    column :vehicle 
    actions
  end
end
