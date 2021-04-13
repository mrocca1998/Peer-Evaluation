class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
