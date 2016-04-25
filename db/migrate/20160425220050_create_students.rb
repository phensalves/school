class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.text :name
      t.text :register_number
      t.integer :status

      t.timestamps null: false
    end
  end

  def down
  	drop_table :students
  end
end
