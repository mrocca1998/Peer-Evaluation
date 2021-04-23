class AddDueToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :due, :datetime, limit: 6
  end
end
