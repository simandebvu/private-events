class AddIndexToEvent < ActiveRecord::Migration[6.0]
  def change
    add_index :events, :creator_id
  end
end
