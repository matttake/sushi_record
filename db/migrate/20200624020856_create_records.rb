class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :course_id
      t.integer :price
      t.integer :really_type
      t.integer :avarage_type
      t.integer :miss_type
      t.integer :miss_type_percentage
      t.timestamps
    end
  end
end
