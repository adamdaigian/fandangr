require 'spec_helper'

describe "theaters/new" do
  before(:each) do
    assign(:theater, stub_model(Theater,
      :location => "MyString",
      :screen => 1
    ).as_new_record)
  end

  it "renders new theater form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", theaters_path, "post" do
      assert_select "input#theater_location[name=?]", "theater[location]"
      assert_select "input#theater_screen[name=?]", "theater[screen]"
    end
  end
end
