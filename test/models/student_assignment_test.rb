# == Schema Information
#
# Table name: student_assignments
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_student_assignments_on_course_id   (course_id)
#  index_student_assignments_on_student_id  (student_id)
#

require 'test_helper'

class StudentAssignmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
