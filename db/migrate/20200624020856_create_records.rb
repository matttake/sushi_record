class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :course, null: false
      t.integer :price, null: false
      t.integer :really_type, null: false
      t.float :avarage_type, null: false
      t.float :miss_type, null: false
      t.timestamps
    end
  end
end
