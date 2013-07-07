require 'spec_helper'

describe "films/index" do
  before(:each) do
    assign(:films, [
      stub_model(Film,
        :name => "Name",
        :info => "MyText"
      ),
      stub_model(Film,
        :name => "Name",
        :info => "MyText"
      )
    ])
  end

  it "renders a list of films" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
