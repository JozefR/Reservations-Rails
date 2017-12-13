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
#

class Lesson < ApplicationRecord
end
