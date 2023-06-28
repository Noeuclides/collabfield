require "rails_helper"

RSpec.feature 'Login', type: :feature do
  let(:user) { create(:user) }

  scenario 'user navigates to the login page and succesfully logs in', js: true do
    visit root_path
    find('div a', text: 'Log In').click

    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    find('button').click
    expect(page).to have_selector('#user-name')
  end
end