require 'spec_helper'

describe User do
  it "signs up" do
    user = User.new(:email => "adam.daigian@gmail.com", :name => "Adam", :password => "emilio", :username => "koolaid")
    user.save

    users = User.all
    expect(users).to include(user)
  end

  is "sings up without an email address" do
    user = User.new(:name => "Adam", :password => "emilio", :username => "koolaid")

    expect(user.valid?).to be_false
  end
end
