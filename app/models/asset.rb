class Asset < ActiveRecord::Base
  attr_accessible :asset
  belongs_to :collection
    
  mount_uploader :asset, AssetUploader
end
