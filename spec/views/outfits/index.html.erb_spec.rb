require 'rails_helper'

RSpec.describe "outfits/index", :type => :view do
  before(:each) do
    assign(:outfits, [
      Outfit.create!(
        :dress_code => "Dress Code",
        :top => 1,
        :bottom => 2,
        :one_piece => 3,
        :shoes => 4,
        :accessory => 5,
        :user => nil
      ),
      Outfit.create!(
        :dress_code => "Dress Code",
        :top => 1,
        :bottom => 2,
        :one_piece => 3,
        :shoes => 4,
        :accessory => 5,
        :user => nil
      )
    ])
  end

  it "renders a list of outfits" do
    render
    assert_select "tr>td", :text => "Dress Code".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
