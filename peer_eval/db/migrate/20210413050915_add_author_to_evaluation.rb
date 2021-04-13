class AddAuthorToEvaluation < ActiveRecord::Migration[6.0]
  def change
    add_column :evaluations, :author, :string
  end
end
