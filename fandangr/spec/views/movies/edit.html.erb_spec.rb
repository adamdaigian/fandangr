require 'spec_helper'

describe "movies/edit" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :film => "MyString",
      :theater => "MyString",
      :screen_id => 1,
      :ticket_id => 1
    ))
  end

  it "renders the edit movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do
      assert_select "input#movie_film[name=?]", "movie[film]"
      assert_select "input#movie_theater[name=?]", "movie[theater]"
      assert_select "input#movie_screen_id[name=?]", "movie[screen_id]"
      assert_select "input#movie_ticket_id[name=?]", "movie[ticket_id]"
    end
  end
end
