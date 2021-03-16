# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.delete_all

Teacher.create(name: 'Elva D. George', shortName: 'Elva');
Teacher.create(name: 'Jaime R. Brown', shortName: 'Jaime');
Teacher.create(name: 'Ethel J. Holloway', shortName: 'Ethel');

TeacherClass.create(teacher: Teacher.first)
TeacherClass.create(teacher: Teacher.first)
TeacherClass.create(teacher: Teacher.first)
TeacherClass.create(teacher: Teacher.first)