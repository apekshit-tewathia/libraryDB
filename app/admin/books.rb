ActiveAdmin.register Book do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :author_id, :section_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :author_id, :section_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  active_admin_importable
  index do
    column :name
    column :author
    column :section
    column :remarks
    column :additional_information
    actions
  end
  filter :name
  filter :remarks 
  filter :additional_information
  filter :author
  filter :section
end
