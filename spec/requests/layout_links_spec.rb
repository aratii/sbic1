require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a News page at '/news'" do
    get '/news'
    response.should have_selector('title', :content => "News")
  end

  it "should have an Event page at '/event'" do
    get '/event'
    response.should have_selector('title', :content => "Event")
  end
  
  it "should have a Enquiry page at '/enquiry'" do
    get '/enquiry'
    response.should have_selector('title', :content => "Enquiry")
  end

  it "should have a Service page at '/service'" do
    get '/service'
    response.should have_selector('title', :content => "Service")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end
  
end
