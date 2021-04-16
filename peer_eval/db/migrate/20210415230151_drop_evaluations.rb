class DropEvaluations < ActiveRecord::Migration[6.0]
  def change
    drop_table :evaluations
  end
end
