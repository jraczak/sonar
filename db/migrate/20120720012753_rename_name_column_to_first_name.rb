class RenameNameColumnToFirstName < ActiveRecord::Migration
  def up
    rename_column :users, :name, :first_name
  end

  def down
    rename_column :users, :name, :first_name
  end
end
