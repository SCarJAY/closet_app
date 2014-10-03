require 'rails_helper'

RSpec.describe "outfits/edit", :type => :view do
  before(:each) do
    @outfit = assign(:outfit, Outfit.create!(
      :dress_code => "MyString",
      :top => 1,
      :bottom => 1,
      :one_piece => 1,
      :shoes => 1,
      :accessory => 1,
      :user => nil
    ))
  end

  it "renders the edit outfit form" do
    render

    assert_select "form[action=?][method=?]", outfit_path(@outfit), "post" do

      assert_select "input#outfit_dress_code[name=?]", "outfit[dress_code]"

      assert_select "input#outfit_top[name=?]", "outfit[top]"

      assert_select "input#outfit_bottom[name=?]", "outfit[bottom]"

      assert_select "input#outfit_one_piece[name=?]", "outfit[one_piece]"

      assert_select "input#outfit_shoes[name=?]", "outfit[shoes]"

      assert_select "input#outfit_accessory[name=?]", "outfit[accessory]"

      assert_select "input#outfit_user_id[name=?]", "outfit[user_id]"
    end
  end
end
