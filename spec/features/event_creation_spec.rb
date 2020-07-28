require 'rails_helper'
RSpec.describe 'event creation and delete', type: :feature, js: true do
  let(:user) { User.create(name: 'momotaro') }

  scenario 'create event' do
    visit '/signin'
    fill_in 'Name', with: user.name
    click_button 'Log me in!'
    sleep(3)
    click_link 'New Event'
    fill_in 'Title', with: 'Castillo'
    fill_in 'Description', with: 'pochoclosupremo'
    click_button 'Create Event'
    sleep(3)
    expect(page).to have_content 'Castillo'
  end

  scenario 'delete event' do
    visit '/signin'
    fill_in 'Name', with: user.name
    click_button 'Log me in!'
    sleep(3)
    click_link 'New Event'
    fill_in 'Title', with: 'Castillo'
    fill_in 'Description', with: 'pochoclosupremo'
    click_button 'Create Event'
    sleep(3)
    click_on 'Back'
    click_on 'Destroy'
    page.driver.browser.switch_to.alert.accept
    sleep(3)
    expect(page).to have_content 'My Events'
  end
end
