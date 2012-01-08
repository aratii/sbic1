require 'spec_helper'

describe RecordsController do
  render_views

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "Record")
    end
  end

 describe "POST 'create'" do

    describe "failure" do

      before(:each) do
        @attr = { :name => "", :location => "", :gridRef => "",
                  :recorder => "" }
      end

      it "should not record a species" do
        lambda do
          post :create, :record => @attr
        end.should_not change(Record, :count)
      end

      it "should have the right title" do
        post :create, :record => @attr
        response.should have_selector("title", :content => "Record")
      end

      it "should render the 'new' page" do
        post :create, :record => @attr
        response.should render_template('new')
      end
    end
  end

end
