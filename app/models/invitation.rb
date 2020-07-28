class Invitation < ApplicationRecord
  belongs_to :attendee, class_name: 'User', foreign_key: :attendee_id
  belongs_to :attended_event, class_name: 'Event', foreign_key: :attended_event_id
  has_many :invitations, foreign_key: :attended_event_id
  validates :attended_event_id, uniqueness: { case_sensitive: false, scope: :attendee_id,
    message: 'You can only attend once' }
end
