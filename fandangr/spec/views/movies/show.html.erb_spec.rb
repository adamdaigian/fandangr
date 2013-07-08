require 'spec_helper'

describe "movies/show" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :film => "Film",
      :theater => "Theater",
      :screen_id => 1,
      :ticket_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Film/)
    rendered.should match(/Theater/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
