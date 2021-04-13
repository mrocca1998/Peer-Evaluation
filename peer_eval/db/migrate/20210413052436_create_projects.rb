class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :type
      t.integer :number

      t.timestamps
    end
  end
end
