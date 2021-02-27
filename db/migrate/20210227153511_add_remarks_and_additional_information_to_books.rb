class AddRemarksAndAdditionalInformationToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :additional_information, :text
    add_column :books, :remarks, :text
  end
end
