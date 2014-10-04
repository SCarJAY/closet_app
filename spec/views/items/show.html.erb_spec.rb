require 'rails_helper'

RSpec.describe "items/show", :type => :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :img_url => "Img Url",
      :name => "Name",
      :category => "Category",
      :color => "Color",
      :size => "Size",
      :brand => "Brand",
      :purchased_from => "Purchased From",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Img Url/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Purchased From/)
    expect(rendered).to match(//)
  end
end
