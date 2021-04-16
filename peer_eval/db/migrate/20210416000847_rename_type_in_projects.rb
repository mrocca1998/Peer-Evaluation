class RenameTypeInProjects < ActiveRecord::Migration[6.0]
  def change
    rename_column :projects, :type, :title
  end
end
