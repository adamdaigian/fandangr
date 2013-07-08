require 'spec_helper'

describe "tickets/new" do
  before(:each) do
    assign(:ticket, stub_model(Ticket,
      :movie_id => 1,
      :theater_id => 1,
      :screen_id => 1,
      :date => "MyString",
      :time => "MyString"
    ).as_new_record)
  end

  it "renders new ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tickets_path, "post" do
      assert_select "input#ticket_movie_id[name=?]", "ticket[movie_id]"
      assert_select "input#ticket_theater_id[name=?]", "ticket[theater_id]"
      assert_select "input#ticket_screen_id[name=?]", "ticket[screen_id]"
      assert_select "input#ticket_date[name=?]", "ticket[date]"
      assert_select "input#ticket_time[name=?]", "ticket[time]"
    end
  end
end
