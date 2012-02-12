require File.dirname(__FILE__) + '/../spec_helper'

describe Party do
  it "should be valid" do
    Party.new.should be_valid
  end
end
