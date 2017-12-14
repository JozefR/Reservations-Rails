# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  title      :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  language   :integer
#  StudyType  :integer
#

class Course < ApplicationRecord
  has_many :lessons
  has_many :teacher_assignment
  has_many :teachers, through: :teacher_assignment
  has_many :student_assignment
  has_many :students, through: :student_assignment

  extend Enumerize
  enumerize :language, in: { czech: 1, english: 2},
            default: :czech, scope: true, predicates: true
  enumerize :StudyType, in: { full_time: 1, part_time: 2},
            default: :full_time, scope: true, predicates: true
end
