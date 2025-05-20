class Event < ApplicationRecord
  belongs_to :creator, foreign_key: :user_id, class_name: "User"
  has_many :event_participants, foreign_key: :user_id
  has_many :attendees, through: :event_participants, source: :user
end
