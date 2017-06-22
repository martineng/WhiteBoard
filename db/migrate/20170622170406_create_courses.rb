class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_code
      t.string :stream
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
