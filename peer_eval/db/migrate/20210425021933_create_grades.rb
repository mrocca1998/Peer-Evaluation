class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.float :projectGrade
      t.integer :student_id
      t.integer :project_id

      t.timestamps
    end
  end
end
