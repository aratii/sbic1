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

class Record < ActiveRecord::Base

 attr_accessible :name, :location, :gridRef, :recorder

 validates(:name, :presence => true)
 validates(:location, :presence => true)
 validates(:gridRef, :presence => true)
 validates(:recorder, :presence => true)

end
