class CreateCourses < ActiveRecord::Migration
  def up
    create_table :courses do |t|
      t.text :name
      t.text :description
      t.integer :status

      t.timestamps null: false
    end
  end

  def down
  	drop_down :courses
  end
end
