class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User'
    has_many :attendees, through: :invitations, source: 'User'
    has_many :invitations, foreign_key: :attended_event
end
