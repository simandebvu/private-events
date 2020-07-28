class RenameInvitationsColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :invitations, :attended_event, :attended_event_id
  end
end
