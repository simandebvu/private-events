
class Event < ApplicationRecord
    has_many :invitations, foreign_key: :attended_event_id
    has_many :attendees, through: :invitations
    belongs_to :creator, class_name: 'User'

    scope :upcoming_events, -> { where('date >= ?',Time.zone.now)}
    scope :previous_events, -> { where('date < ?',Time.zone.now)}
    
end
