class AddShortNameToTeacher < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :shortName, :string
  end
end
