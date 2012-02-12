require File.dirname(__FILE__) + '/../spec_helper'

describe PartiesController do
  fixtures :all
  render_views

  it "show action should render show template" do
    get :show, :id => Party.first
    response.should render_template(:show)
  end
end
