class AddCourseChartToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :course_chart, :string
  end
end
