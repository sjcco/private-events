require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:starting_date_time) }
  it { should validate_presence_of(:ending_date_time) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:location) }
  it { should validate_uniqueness_of(:title) }

  it 'has a starting date before the ending date' do
    date = Event.new(starting_date_time: DateTime.new(1))
    date.ending_date_time = DateTime.new(0)
    expect(date).to_not be_valid
    expect(date.errors[:ending_date_time]).to include('cannot be before the start date')
  end

  it 'should belong to creator' do
    event = Event.reflect_on_association(:creator)
    expect(event.macro).to eq(:belongs_to)
  end

  it 'should have many registrations' do
    event = Event.reflect_on_association(:registrations)
    expect(event.macro).to eq(:has_many)
  end

  it 'should have many atendees' do
    event = Event.reflect_on_association(:attendees)
    expect(event.macro).to eq(:has_many)
  end
end
