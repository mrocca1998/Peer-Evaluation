class RenameAuthorInScores < ActiveRecord::Migration[6.0]
  def change
    rename_column :scores, :author, :author_id
  end
end
