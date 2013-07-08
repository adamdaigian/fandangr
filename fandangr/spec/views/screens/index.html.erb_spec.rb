require 'spec_helper'

describe "screens/index" do
  before(:each) do
    assign(:screens, [
      stub_model(Screen,
        :movie_id => 1,
        :theater_id => 2,
        :film_id => 3,
        :seat_id => 4
      ),
      stub_model(Screen,
        :movie_id => 1,
        :theater_id => 2,
        :film_id => 3,
        :seat_id => 4
      )
    ])
  end

  it "renders a list of screens" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
