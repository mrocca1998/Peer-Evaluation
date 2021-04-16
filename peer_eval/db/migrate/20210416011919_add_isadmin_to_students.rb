class AddIsadminToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :isAdmin, :boolean
  end
end
