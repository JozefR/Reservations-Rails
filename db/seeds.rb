# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#if Building.where(code: 'CLS').count == 0
   classic = Building.create!(title: 'Classic', code: 'CLS')
   retro = Building.create!(title: 'Retro', code: 'RTR')

   par1_1 = Room.create!(title: 'Par 1.1', code: '1.1', building_id: classic.id)
   par1_2 = Room.create!(title: 'Par 1.1', code: '1.1', building_id: classic.id)
   par1_3 = Room.create!(title: 'Par 1.1', code: '1.1', building_id: classic.id)

   ror33 = Room.create!(title: 'ROR 33', code: '33', building_id: retro.id)
   ror34 = Room.create!(title: 'ROR 34', code: '34', building_id: retro.id)
   ror35 = Room.create!(title: 'ROR 35', code: '35', building_id: retro.id)

   bobTeacher = Teacher.create!(first_name: 'Bob', last_name: 'Manor', email: 'manor@gmail.com')
   student1 = Student.create!(first_name: 'Jozef', last_name: 'Randjak', email: 'jozef@sth.com')

   prCourse = Course.create!(title: 'PR1', code: 'PR1')
   lesson = Lesson.create!(durration: 2, room_id: par1_1.id, teacher_id: bobTeacher.id, course_id: prCourse.id)
#end

