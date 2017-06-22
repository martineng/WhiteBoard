class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.string :subject_code
      t.string :description
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
