require 'spec_helper'

describe "seats/edit" do
  before(:each) do
    @seat = assign(:seat, stub_model(Seat,
      :number => 1,
      :screen_id => 1,
      :theater_id => 1,
      :movie_id => 1
    ))
  end

  it "renders the edit seat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", seat_path(@seat), "post" do
      assert_select "input#seat_number[name=?]", "seat[number]"
      assert_select "input#seat_screen_id[name=?]", "seat[screen_id]"
      assert_select "input#seat_theater_id[name=?]", "seat[theater_id]"
      assert_select "input#seat_movie_id[name=?]", "seat[movie_id]"
    end
  end
end
