require 'rails_helper'

RSpec.describe "cameos/new", :type => :view do
  before(:each) do
    assign(:cameo, Cameo.new(
      :item => nil,
      :outfit => nil
    ))
  end

  it "renders new cameo form" do
    render

    assert_select "form[action=?][method=?]", cameos_path, "post" do

      assert_select "input#cameo_item_id[name=?]", "cameo[item_id]"

      assert_select "input#cameo_outfit_id[name=?]", "cameo[outfit_id]"
    end
  end
end
