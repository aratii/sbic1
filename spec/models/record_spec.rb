# == Schema Information
#
# Table name: records
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  sex        :string(255)
#  quantity   :integer
#  location   :string(255)
#  gridRef    :string(255)
#  recorder   :string(255)
#  date       :datetime
#  reference  :string(255)
#  comment    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Record do
  
  before(:each) do
    @attr = { :name => "Species Name", :location => "example location", :gridRef => "123456", :recorder => "Recorder Name" }
  end

  it "should create a new instance given valid attributes" do
    Record.create!(@attr)
  end

  it "should require a name" do
    no_name_record = Record.new(@attr.merge(:name => ""))
    no_name_record.should_not be_valid
  end
  
  it "should require a location" do
    no_location_record = Record.new(@attr.merge(:location => ""))
    no_location_record.should_not be_valid
  end

  it "should require a grid location" do
    no_gridRef_record = Record.new(@attr.merge(:gridRef => ""))
    no_gridRef_record.should_not be_valid
  end
  
  it "should require a recorder" do
    no_recorder_record = Record.new(@attr.merge(:recorder => ""))
    no_recorder_record.should_not be_valid
  end

end
