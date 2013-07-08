require 'spec_helper'

describe "theaters/index" do
  before(:each) do
    assign(:theaters, [
      stub_model(Theater,
        :location => "Location",
        :screen => 1
      ),
      stub_model(Theater,
        :location => "Location",
        :screen => 1
      )
    ])
  end

  it "renders a list of theaters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
