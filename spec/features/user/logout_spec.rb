require "rails_helper"

RSpec.feature 'Logout', type: :feature do
  let(:user) { create(:user) }

  scenario 'user succesfully logs put', js: true do
    sign_in user
    visit root_path
    find('div a', text: 'Logout').click

    expect(page).to have_selector('div a', text: 'Logout')
  end
end