require 'spec_helper'

describe PagesController do
  
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                        :content => "Surrey Biodiversity Information Centre | Home")
    end
  end

  describe "GET 'news'" do
    it "should be successful" do
      get 'news'
      response.should be_success
    end
    it "should have the right title" do
      get 'news'
      response.should have_selector("title",
                        :content => "Surrey Biodiversity Information Centre | News")
    end
  end

  describe "GET 'event'" do
    it "should be successful" do
      get 'event'
      response.should be_success
    end
    it "should have the right title" do
      get 'event'
      response.should have_selector("title",
                        :content => "Surrey Biodiversity Information Centre | Event")
    end
  end

  describe "GET 'survey'" do
    it "should be successful" do
      get 'survey'
      response.should be_success
    end
    it "should have the right title" do
      get 'survey'
      response.should have_selector("title",
                        :content => "Surrey Biodiversity Information Centre | Survey")
    end
  end
  
  describe "GET 'enquiry'" do
    it "should be successful" do
      get 'enquiry'
      response.should be_success
    end
    it "should have the right title" do
      get 'enquiry'
      response.should have_selector("title",
                        :content => "Surrey Biodiversity Information Centre | Enquiry")
    end
  end

  describe "GET 'service'" do
    it "should be successful" do
      get 'service'
      response.should be_success
    end
    it "should have the right title" do
      get 'service'
      response.should have_selector("title",
                        :content => "Surrey Biodiversity Information Centre | Service")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                        :content => "Surrey Biodiversity Information Centre | About")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                        :content => "Surrey Biodiversity Information Centre | Contact")
    end
  end

end
