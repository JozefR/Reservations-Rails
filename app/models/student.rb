# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  StudyType  :integer
#

class Student < ApplicationRecord
  has_many :student_assignment
  has_many :courses, throught: :student_assignment

  extend Enumerize
  enumerize :StudyType, in: { full_time: 1, part_time: 2},
            default: :full_time, scope: true, predicates: true
end
