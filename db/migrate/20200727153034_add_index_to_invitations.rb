class AddIndexToInvitations < ActiveRecord::Migration[6.0]
  def change
    add_index :invitations, :attendee_id
    add_index :invitations, :attended_event_id
  end
end
