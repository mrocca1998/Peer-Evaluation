class ChangeStudentIsAdminDefault < ActiveRecord::Migration[6.0]
  def change
  	change_column_default :students, :isAdmin, false
  end
end
