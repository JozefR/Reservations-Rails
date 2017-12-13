# == Schema Information
#
# Table name: teacher_assignments
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_teacher_assignments_on_course_id   (course_id)
#  index_teacher_assignments_on_teacher_id  (teacher_id)
#

require 'test_helper'

class TeacherAssignmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
