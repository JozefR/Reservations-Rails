# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if Building.where(code: 'CLS').count == 0
   classic = Building.create!(title: 'Classic', code: 'CLS')
   retro = Building.create!(title: 'Retro', code: 'RTR')

   par1_1 = Room.create!(title: 'Par 1.1', code: '1.1', building_id: classic.id)
   par1_2 = Room.create!(title: 'Par 1.2', code: '1.1', building_id: classic.id)
   par1_3 = Room.create!(title: 'Par 1.3', code: '1.1', building_id: classic.id)

   ror33 = Room.create!(title: 'ROR 33', code: '33', building_id: retro.id)
   ror34 = Room.create!(title: 'ROR 34', code: '34', building_id: retro.id)
   ror35 = Room.create!(title: 'ROR 35', code: '35', building_id: retro.id)

   bobTeacher = Teacher.create!(first_name: 'Bob', last_name: 'Manor', email: 'manor@gmail.com')
   danaTeacher = Teacher.create!(first_name: 'Dana', last_name: 'Danko', email: 'danko@gmail.com')
   feriTeacher = Teacher.create!(first_name: 'Feri', last_name: 'Fanor', email: 'fanor@gmail.com')


   studentJozef = Student.create!(first_name: 'Jozef', last_name: 'Randjak', email: 'jozef@sth.com', StudyType: 2)
   studentMiro = Student.create!(first_name: 'Miro', last_name: 'Miroslav', email: 'miroslav@sth.com', StudyType: 2)
   studentMilan = Student.create!(first_name: 'Milan', last_name: 'Milanovic', email: 'milanovic@sth.com', StudyType: 2)

   prCourse = Course.create!(title: 'PR1', code: 'PR1', language: 2)
   aodCourse = Course.create!(title: 'AOD', code: 'AO', language: 1)
   webCourse = Course.create!(title: 'Web', code: 'WB', language: 2)

   studentAssignment = StudentAssignment.create!(course_id: prCourse.id, student_id: studentJozef.id)
   studentAssignment2 = StudentAssignment.create!(course_id: aodCourse.id, student_id: studentMilan.id)
   studentAssignment3 = StudentAssignment.create!(course_id: webCourse.id, student_id: studentMiro.id)

   teacherAssignment = TeacherAssignment.create!(course_id: prCourse.id, teacher_id: bobTeacher.id)
   teacherAssignment2 = TeacherAssignment.create!(course_id: aodCourse.id, teacher_id: danaTeacher.id)
   teacherAssignment3 = TeacherAssignment.create!(course_id: webCourse.id, teacher_id: feriTeacher.id)

   lesson = Lesson.create!(start_at: '2017-12-18 13:07:00', end_at: '2017-12-18 13:07:00', durration: 2, room_id: par1_1.id, teacher_id: bobTeacher.id, course_id: prCourse.id)
   lesson2 = Lesson.create!(start_at: '2017-12-18 14:07:02', end_at: '2017-12-18 13:07:00', durration: 1.30, room_id: par1_2.id, teacher_id: danaTeacher.id, course_id: aodCourse.id)
   lesson3 = Lesson.create!(start_at: '2017-12-18 15:07:02', end_at: '2017-12-18 13:07:00', durration: 1, room_id: par1_3.id, teacher_id: feriTeacher.id, course_id: webCourse.id)
   lesson4 = Lesson.create!(start_at: '2017-12-18 16:07:02', end_at: '2017-12-18 13:07:00', durration: 2, room_id: ror33.id, teacher_id: danaTeacher.id, course_id: prCourse.id)
   lesson5 = Lesson.create!(start_at: '2017-12-18 17:07:02', end_at: '2017-12-18 13:07:00', durration: 2, room_id: ror34.id, teacher_id: bobTeacher.id, course_id: prCourse.id)
   lesson6 = Lesson.create!(start_at: '2017-12-18 18:07:02', end_at: '2017-12-18 13:07:00', durration: 2, room_id: ror35.id, teacher_id: bobTeacher.id, course_id: prCourse.id)
end

