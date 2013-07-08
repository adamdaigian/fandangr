require 'spec_helper'

describe "seats/new" do
  before(:each) do
    assign(:seat, stub_model(Seat,
      :number => 1,
      :screen_id => 1,
      :theater_id => 1,
      :movie_id => 1
    ).as_new_record)
  end

  it "renders new seat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", seats_path, "post" do
      assert_select "input#seat_number[name=?]", "seat[number]"
      assert_select "input#seat_screen_id[name=?]", "seat[screen_id]"
      assert_select "input#seat_theater_id[name=?]", "seat[theater_id]"
      assert_select "input#seat_movie_id[name=?]", "seat[movie_id]"
    end
  end
end
