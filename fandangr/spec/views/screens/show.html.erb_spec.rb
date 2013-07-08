require 'spec_helper'

describe "screens/show" do
  before(:each) do
    @screen = assign(:screen, stub_model(Screen,
      :movie_id => 1,
      :theater_id => 2,
      :film_id => 3,
      :seat_id => 4
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
