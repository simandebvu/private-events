class User < ApplicationRecord
  has_many :invitations, foreign_key: 'attendee_id'
  has_many :attended_events, through: :invitations 
  has_many :created_events, foreign_key: :creator_id, class_name: 'event'
end
