class DeleteSubjectFromTeacher < ActiveRecord::Migration[6.1]
  def change
    remove_column :teachers, :subject
  end
end
