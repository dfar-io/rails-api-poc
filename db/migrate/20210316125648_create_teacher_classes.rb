class CreateTeacherClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :teacher_classes do |t|
      t.belongs_to :teacher
      t.timestamps
    end
  end
end
