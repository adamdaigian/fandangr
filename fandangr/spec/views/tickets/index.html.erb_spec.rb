require 'spec_helper'

describe "tickets/index" do
  before(:each) do
    assign(:tickets, [
      stub_model(Ticket,
        :movie_id => 1,
        :theater_id => 2,
        :screen_id => 3,
        :date => "Date",
        :time => "Time"
      ),
      stub_model(Ticket,
        :movie_id => 1,
        :theater_id => 2,
        :screen_id => 3,
        :date => "Date",
        :time => "Time"
      )
    ])
  end

  it "renders a list of tickets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
  end
end
