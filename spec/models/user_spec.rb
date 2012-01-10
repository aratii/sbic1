require 'spec_helper'

describe User do
  before(:each) do
    @attr = { :name => "Example User", :virtualPW => "foobar"}
  end
  
  describe "password encryption" do

    before(:each) do
      @user = User.create!(@attr)
    end
    
    
    describe "has_password? method" do

      it "should be true if the passwords match" do
        @user.has_password?(@attr[:virtualPW]).should be_true
      end    

      it "should be false if the passwords don't match" do
        @user.has_password?("invalid").should be_false
      end 
    end

    describe "authenticate method" do

      it "should return nil on name/password mismatch" do
        wrong_password_user = User.authenticate(@attr[:name], "wrongpass")
        wrong_password_user.should be_nil
      end

      it "should return the user on name/password match" do
        matching_user = User.authenticate(@attr[:name], @attr[:virtualPW])
        matching_user.should == @user
      end
    end
  end
end
