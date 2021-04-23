class AddCountToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :count, :integer, :default => 1
  end
end
