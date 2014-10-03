require 'rails_helper'

RSpec.describe "cameos/index", :type => :view do
  before(:each) do
    assign(:cameos, [
      Cameo.create!(
        :item => nil,
        :outfit => nil
      ),
      Cameo.create!(
        :item => nil,
        :outfit => nil
      )
    ])
  end

  it "renders a list of cameos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
