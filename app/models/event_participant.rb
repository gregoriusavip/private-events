class EventParticipant < ApplicationRecord
  belongs_to :attending_user, class_name: "User"
  belongs_to :attending_event, class_name: "Event"
end
