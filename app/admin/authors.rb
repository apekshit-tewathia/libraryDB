ActiveAdmin.register Author do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    column :name
    actions
  end
  filter :name
  filter :books

  sidebar 'Books by this Author', :only => :show do
    table_for Book.joins(:author).where(:author_id => author.id).includes(:section) do |t|
      t.column("Name") { |book| book.name }
      t.column("Section") { |book| book.section.name }
    end
  end

end
