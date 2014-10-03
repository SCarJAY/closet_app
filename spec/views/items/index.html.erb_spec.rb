require 'rails_helper'

RSpec.describe "items/index", :type => :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :img_url => "Img Url",
        :name => "Name",
        :category => "Category",
        :color => "Color",
        :size => "Size",
        :brand => "Brand",
        :purchased_from => "Purchased From",
        :user => nil
      ),
      Item.create!(
        :img_url => "Img Url",
        :name => "Name",
        :category => "Category",
        :color => "Color",
        :size => "Size",
        :brand => "Brand",
        :purchased_from => "Purchased From",
        :user => nil
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Img Url".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Purchased From".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
