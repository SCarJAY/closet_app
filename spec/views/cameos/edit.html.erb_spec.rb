require 'rails_helper'

RSpec.describe "cameos/edit", :type => :view do
  before(:each) do
    @cameo = assign(:cameo, Cameo.create!(
      :item => nil,
      :outfit => nil
    ))
  end

  it "renders the edit cameo form" do
    render

    assert_select "form[action=?][method=?]", cameo_path(@cameo), "post" do

      assert_select "input#cameo_item_id[name=?]", "cameo[item_id]"

      assert_select "input#cameo_outfit_id[name=?]", "cameo[outfit_id]"
    end
  end
end
