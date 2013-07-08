require 'spec_helper'

describe "seats/index" do
  before(:each) do
    assign(:seats, [
      stub_model(Seat,
        :number => 1,
        :screen_id => 2,
        :theater_id => 3,
        :movie_id => 4
      ),
      stub_model(Seat,
        :number => 1,
        :screen_id => 2,
        :theater_id => 3,
        :movie_id => 4
      )
    ])
  end

  it "renders a list of seats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
