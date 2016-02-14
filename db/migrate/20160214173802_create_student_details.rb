class CreateStudentDetails < ActiveRecord::Migration
  def change
    create_table :student_details do |t|
      t.string :regno
      t.string :name
      t.string :image_id

      t.timestamps null: false
    end
  end
end
