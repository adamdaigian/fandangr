require 'spec_helper'

describe Ticket do
  it "belongs to a movie, screen and theater."
    ticket = Ticket.new(:movie_id => 1, :screen_id => 1, :theater_id => 1)
    ticket.save

    tickets = Ticket.all
    expect(ticket).to include(ticket)
  end

  it "gets created without a movie_id"
    ticket = Ticket.new(:screen_id => 1, :theater_id => 1)

    expect(ticket.valid?).to be_false
  end
end