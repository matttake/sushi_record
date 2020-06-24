class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :parent_name
      t.string :child_name
      t.timestamps
    end
  end
end
