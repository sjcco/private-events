require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a name' do
    user = User.new

    expect(user).to_not be_valid
    user.name = 'Example'
    expect(user).to be_valid
  end

  it 'has a unique name' do
    User.create(name: 'repeated_name')
    user = User.new(name: 'repeated_name')

    expect(user).to_not be_valid
  end

  it 'should have many events' do
    user = User.reflect_on_association(:events)
    expect(user.macro).to eq(:has_many)
  end

  it 'should have many attended events' do
    user = User.reflect_on_association(:attended_events)
    expect(user.macro).to eq(:has_many)
  end

  it 'should have many registrations' do
    user = User.reflect_on_association(:registrations)
    expect(user.macro).to eq(:has_many)
  end
end
