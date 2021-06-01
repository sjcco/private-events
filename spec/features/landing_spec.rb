require 'rails_helper'

RSpec.describe 'Landing page features' do
  it 'Displays Upcoming events' do
    visit(root_path)
    expect(page).to have_content('Upcoming Events')
  end

  it 'Displays Past events' do
    visit(root_path)
    expect(page).to have_content('Past Events')
  end

  it 'does not let you access events without signing in' do
    visit('/events/8')
    expect(page).to have_content('You must be logged in to access this')
  end

  it 'redirects you to login when clicking link' do
    visit(root_path)
    click_link('Log in')
    expect(page).to have_content('Sign in to Bati-events')
  end
  it 'redirects you to sign up when clicking link' do
    visit(root_path)
    click_link('Sign up')
    expect(page).to have_content('Sign up to Bati-events')
  end
end
