class Asset < ActiveRecord::Base
  belongs_to :collection
  mount_uploader :asset 
end
