require 'rails_helper'

RSpec.describe Registration, type: :model do
  it 'should belong to user' do
    reg = Registration.reflect_on_association(:user)
    expect(reg.macro).to eq(:belongs_to)
  end

  it 'should belong to event' do
    reg = Registration.reflect_on_association(:event)
    expect(reg.macro).to eq(:belongs_to)
  end
end
