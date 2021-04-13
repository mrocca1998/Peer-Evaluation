class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.integer :student_id
      t.integer :group_id

      t.timestamps
    end
  end
end
