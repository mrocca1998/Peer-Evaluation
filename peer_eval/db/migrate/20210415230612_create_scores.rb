class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :rating
      t.string :author
      t.string :recipient
      t.integer :review_id

      t.timestamps
    end
  end
end
