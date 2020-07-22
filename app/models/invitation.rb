class Invitation < ApplicationRecord
  belongs_to :attendee_id, class_name: "User", foreign_key: :attendee_id 
  belongs_to :attended_event, class_name: "Event", foreign_key: :attended_event 
end
