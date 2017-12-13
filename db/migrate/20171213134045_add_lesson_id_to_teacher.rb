class AddLessonIdToTeacher < ActiveRecord::Migration[5.1]
  def change
    add_reference :teachers, :lesson, foreign_key: true
  end
end
