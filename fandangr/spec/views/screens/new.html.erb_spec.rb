require 'spec_helper'

describe "screens/new" do
  before(:each) do
    assign(:screen, stub_model(Screen,
      :movie_id => 1,
      :theater_id => 1,
      :film_id => 1,
      :seat_id => 1
    ).as_new_record)
  end

  it "renders new screen form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", screens_path, "post" do
      assert_select "input#screen_movie_id[name=?]", "screen[movie_id]"
      assert_select "input#screen_theater_id[name=?]", "screen[theater_id]"
      assert_select "input#screen_film_id[name=?]", "screen[film_id]"
      assert_select "input#screen_seat_id[name=?]", "screen[seat_id]"
    end
  end
end
