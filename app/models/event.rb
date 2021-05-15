class Event < ApplicationRecord
  validates :title, :starting_date_time, :ending_date_time, :description, :location, presence: true
  validates :title, uniqueness: true
  validate :end_date_is_after_start_date

  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'

  has_many :registrations
  has_many :attendees, through: :registrations, source: :user

  scope :past, -> { where('ending_date_time < ?', DateTime.now) }
  scope :upcoming, -> { where('starting_date_time > ?', DateTime.now) }

  private

  def end_date_is_after_start_date
    return if ending_date_time.blank? || starting_date_time.blank?

    errors.add(:end_date, 'cannot be before the start date') if ending_date_time < starting_date_time
  end
end
