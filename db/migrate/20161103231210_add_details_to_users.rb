class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :GPA, :integer, :default =>"10"
    add_column :users, :faculty, :string, default: "CMPT"
    add_column :users, :number_courses_taken, :integer
    add_column :users, :course_taken, :string
  end
end
