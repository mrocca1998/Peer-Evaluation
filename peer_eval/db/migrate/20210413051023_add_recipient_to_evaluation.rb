class AddRecipientToEvaluation < ActiveRecord::Migration[6.0]
  def change
    add_column :evaluations, :recipient, :string
  end
end
