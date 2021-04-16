class ChangeRecipientToIntInScores < ActiveRecord::Migration[6.0]
  def change
    change_column :scores, :recipient, :integer
  end
end
