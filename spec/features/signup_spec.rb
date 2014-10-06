require 'rails_helper'

describe "the sign up process", :type => :feature do
  it "signs me up" do
    visit '/users/new'
      fill_in 'Email', :with => 'test1@example.com'
      fill_in 'Password', :with => 'passtest'
      fill_in 'Name', :with => 'Testy'
      fill_in 'City', :with => 'Testville'
      fill_in 'State', :with => 'Test York'
      click_button 'Create User'
    expect(page).to have_content 'Testy'
  end
end
