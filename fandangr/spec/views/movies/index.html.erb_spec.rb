require 'spec_helper'

describe "movies/index" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :film => "Film",
        :theater => "Theater",
        :screen_id => 1,
        :ticket_id => 2
      ),
      stub_model(Movie,
        :film => "Film",
        :theater => "Theater",
        :screen_id => 1,
        :ticket_id => 2
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Film".to_s, :count => 2
    assert_select "tr>td", :text => "Theater".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
