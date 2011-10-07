class Project < ActiveRecord::Base
  
  validates_presence_of :name, :presence => true
  
  has_many :collections
end
