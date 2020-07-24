class User < ApplicationRecord
  # has_many :events, foreign_key: :creator_id
  # has_many :invitations, foreign_key: 'attendee_id'
  # has_many :attended_events, through: :invitations, source: "event"
  # # has_many :created_events, foreign_key: :creator_id, class_name: 'event'
  has_many :events, foreign_key: :creator_id, dependent: :delete_all
  has_many :invitations, foreign_key: 'attendee_id'
  has_many :attended_events, through: :invitations, foreign_key: 'attended_event_id'

  def attending?(event)
    p attended_events.include?(event)
    attended_events.include?(event)
  end
end
