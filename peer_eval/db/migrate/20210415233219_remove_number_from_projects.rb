class RemoveNumberFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :number, :integer
  end
end
