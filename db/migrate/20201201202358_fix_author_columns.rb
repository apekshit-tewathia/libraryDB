class FixAuthorColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :authors, :first_name, :name
    remove_column :authors, :last_name, :string
  end
end
