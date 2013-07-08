require 'spec_helper'

describe Theater do
  it "has films, screens, and plays movies"
    theater = Theater.new(:name => "Marina", :screen => 6, :movie => "Fast and Furious 6")
    theater.save

    theaters = Theater.all
    expect(theaters).to include(theater)
  end

  it "got created without a movie to play" do
    theater = Theater.new(:name = "Marina 6", :screen => 6)

    expect(theater.valid?).to be_false
  end
end

