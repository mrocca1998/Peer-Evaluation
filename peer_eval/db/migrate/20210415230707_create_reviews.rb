class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :group_id
      t.integer :project_id
      t.integer :student_id

      t.timestamps
    end
  end
end
