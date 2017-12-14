class AddStudyTypeToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :StudyType, :integer
  end
end
