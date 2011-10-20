class Asset < ActiveRecord::Base
  attr_accessible :file
  belongs_to :collection
    
  mount_uploader :file, AssetUploader
end
