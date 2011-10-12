class Collection < ActiveRecord::Base
  validates_presence_of :name, :presence => true
  
  belongs_to :project
  has_many :assets, :dependent => :destroy
  
  has_ancestry
end
