class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :course_id
      t.integer :price, null: false
      t.integer :really_type, null: false
      t.integer :avarage_type, null: false
      t.integer :miss_type, null: false
      t.integer :miss_type_percentage, null: false
      t.timestamps
    end
  end
end
