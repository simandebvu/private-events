require 'rails_helper'
RSpec.describe 'login and logout', type: :feature do
  let(:user) { User.create(name: 'momotaro') }
  scenario 'login page' do
    visit '/signin'
    fill_in 'Name', with: user.name
    click_button 'Log me in!'
    sleep(3)
    expect(page).to have_content('My Events')
  end
  scenario 'logout' do
    visit '/signin'
    fill_in 'Name', with: user.name
    click_button 'Log me in!'
    sleep(3)
    click_on 'Log Out'
    sleep(3)
    expect(page). to have_content('Private Events')
  end
end
