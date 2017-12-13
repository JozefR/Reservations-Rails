# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  title      :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ApplicationRecord
  has_many :lessons
  has_many :teacher_assignment
  has_many :teachers, through: :teacher_assignment
  has_many :student_assignment
  has_many :students, through: :student_assignment
end
