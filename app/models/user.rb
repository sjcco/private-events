class User < ApplicationRecord
  has_many :events
  has_many :registrations
  has_many :attended_events, through: :registrations, source: :event
end
