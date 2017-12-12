# == Schema Information
#
# Table name: buildings
#
#  id         :integer          not null, primary key
#  title      :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :integer
#
# Indexes
#
#  index_buildings_on_room_id  (room_id)
#

class Building < ApplicationRecord
  belongs_to :room

  validates :title, presence: true, length: {minimum: 3, maximum: 30}
  validates :code, presence: true, length: {minimum: 2, maximum: 20}
end
