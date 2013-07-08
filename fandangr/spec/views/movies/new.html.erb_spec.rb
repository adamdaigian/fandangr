require 'spec_helper'

describe "movies/new" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :film => "MyString",
      :theater => "MyString",
      :screen_id => 1,
      :ticket_id => 1
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movies_path, "post" do
      assert_select "input#movie_film[name=?]", "movie[film]"
      assert_select "input#movie_theater[name=?]", "movie[theater]"
      assert_select "input#movie_screen_id[name=?]", "movie[screen_id]"
      assert_select "input#movie_ticket_id[name=?]", "movie[ticket_id]"
    end
  end
end
