require 'rails_helper'

describe "the log in process", :type => :feature do
  before :each do
    User.create(:email => 'test@example.com', :password => 'passtest', :name => 'Testy', :city => 'Testville', :state => 'Test York')
  end

  it "logs me in" do
    visit '/login' do
      fill_in 'Email', :with => 'test@example.com'
      fill_in 'Password', :with => 'passtest'
    end
    click_button 'Login'
    expect(page).to have_content 'Testy'
  end
end
