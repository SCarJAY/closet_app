require 'rails_helper'

RSpec.describe "cameos/show", :type => :view do
  before(:each) do
    @cameo = assign(:cameo, Cameo.create!(
      :item => nil,
      :outfit => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
