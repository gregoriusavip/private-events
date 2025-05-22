class Event < ApplicationRecord
  belongs_to :creator, foreign_key: :user_id, class_name: "User"
  has_many :event_participants, foreign_key: :attending_event_id
  has_many :attendees, through: :event_participants, source: :attending_user

  scope :past, -> { where(time: ...Time.current) }
  scope :upcoming, -> { where time: Time.current.. }
end
