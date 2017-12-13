class RemoveLessonIdFromTeacher < ActiveRecord::Migration[5.1]
  def change
    remove_reference :teachers, :lesson, foreign_key: true
  end
end
