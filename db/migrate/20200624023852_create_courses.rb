class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :parent_name, null: false
      t.string :child_name, null: false
      t.timestamps
    end
  end
end
