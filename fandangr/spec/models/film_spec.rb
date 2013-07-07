require 'spec_helper'

describe Film do
  it "has a name and has info"
    film = Film.new(:name => "Fast and Furious 6", :info => "Vin Diesel is baddddd ass" :theater => "Marina 6")
    film.save

    films = Film.all
    expect(films).to include(film)
  end

  it "gets created without a theater" do
    film = Film.new(:name => "Fast and Furious 6")

    expect(film.valid?).to be_false
  end
end

