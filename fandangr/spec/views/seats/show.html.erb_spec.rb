require 'spec_helper'

describe "seats/show" do
  before(:each) do
    @seat = assign(:seat, stub_model(Seat,
      :number => 1,
      :screen_id => 2,
      :theater_id => 3,
      :movie_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
