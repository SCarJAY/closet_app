require 'rails_helper'

RSpec.describe "outfits/show", :type => :view do
  before(:each) do
    @outfit = assign(:outfit, Outfit.create!(
      :dress_code => "Dress Code",
      :top => 1,
      :bottom => 2,
      :one_piece => 3,
      :shoes => 4,
      :accessory => 5,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dress Code/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(//)
  end
end
