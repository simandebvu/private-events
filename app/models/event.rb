class Event < ApplicationRecord
    has_many :invitations, foreign_key: 'attended_event'
    has_many :attendees, through: :invitations, source: :attendee_id
    belongs_to :creator, foreign_key: 'creator_id', class_name: 'User'
end
