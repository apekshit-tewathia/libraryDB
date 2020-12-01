ActiveAdmin.register Section do

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
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    column :name
    actions
  end
  filter :name
  filter :books

  sidebar 'Books in this section', :only => :show do
    table_for Book.joins(:section).where(:section_id => resource.id).includes(:author) do |t|
      t.column("Name") { |book| book.name }
      t.column("Author") { |book| book.author.name }
    end
  end

end
