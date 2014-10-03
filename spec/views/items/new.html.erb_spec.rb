require 'rails_helper'

RSpec.describe "items/new", :type => :view do
  before(:each) do
    assign(:item, Item.new(
      :img_url => "MyString",
      :name => "MyString",
      :category => "MyString",
      :color => "MyString",
      :size => "MyString",
      :brand => "MyString",
      :purchased_from => "MyString",
      :user => nil
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_img_url[name=?]", "item[img_url]"

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_category[name=?]", "item[category]"

      assert_select "input#item_color[name=?]", "item[color]"

      assert_select "input#item_size[name=?]", "item[size]"

      assert_select "input#item_brand[name=?]", "item[brand]"

      assert_select "input#item_purchased_from[name=?]", "item[purchased_from]"

      assert_select "input#item_user_id[name=?]", "item[user_id]"
    end
  end
end
