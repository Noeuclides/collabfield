require "rails_helper"

RSpec.feature 'Sign Up', type: :feature do
  let(:user) { build(:user) }

  scenario 'user navigates to the sign up page and succesfully sign up', js: true do
    visit root_path
    find('div a', text: 'Sign Up').click

    fill_in 'user[name]', with: user.name
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password_confirmation
    fill_in 'user[password_confirmation]', with: user.password
    find('button').click
    expect(page).to have_selector('#user-name')
  end
end