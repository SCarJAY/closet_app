require 'rails_helper'

describe "the log in process", :type => :feature do
  before :each do
    test_user = User.new( :name => 'Testy', :email => 'test2@example.com', :password => 'passtest', :city => 'Testville', :state => 'Test York',)
    test_user.save
  end

  it "logs me in" do
    visit '/login'
      fill_in('Email', :with => 'test2@example.com')
      fill_in('Password', :with => 'passtest')
      click_button 'Login'
    expect(page).to have_content 'Testy'
  end

end
