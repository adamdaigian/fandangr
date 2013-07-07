require 'spec_helper'

describe "films/show" do
  before(:each) do
    @film = assign(:film, stub_model(Film,
      :name => "Name",
      :info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
