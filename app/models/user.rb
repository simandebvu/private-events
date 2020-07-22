class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id
  has_many :events, foreign_key: :attended_events
end
