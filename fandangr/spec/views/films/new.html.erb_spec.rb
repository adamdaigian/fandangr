require 'spec_helper'

describe "films/new" do
  before(:each) do
    assign(:film, stub_model(Film,
      :name => "MyString",
      :info => "MyText"
    ).as_new_record)
  end

  it "renders new film form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", films_path, "post" do
      assert_select "input#film_name[name=?]", "film[name]"
      assert_select "textarea#film_info[name=?]", "film[info]"
    end
  end
end
