class ChangeAuthorToIntInScores < ActiveRecord::Migration[6.0]
  def change
    change_column :scores, :author, :integer
  end
end
