require 'spec_helper'

describe "films/edit" do
  before(:each) do
    @film = assign(:film, stub_model(Film,
      :name => "MyString",
      :info => "MyText"
    ))
  end

  it "renders the edit film form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", film_path(@film), "post" do
      assert_select "input#film_name[name=?]", "film[name]"
      assert_select "textarea#film_info[name=?]", "film[info]"
    end
  end
end
