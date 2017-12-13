# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  start_at   :datetime
#  end_at     :datetime
#  durration  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :integer
#
# Indexes
#
#  index_lessons_on_room_id  (room_id)
#

require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
