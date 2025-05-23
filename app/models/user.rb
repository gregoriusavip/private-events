class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :created_events, foreign_key: :user_id, class_name: "Event"
  has_many :event_participants, foreign_key: :attending_user_id
  has_many :attended_events, through: :event_participants, source: :attending_event
end
