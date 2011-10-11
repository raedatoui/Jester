class CollectionsController < InheritedResources::Base
  belongs_to :project
  
  def create
    create! { collection_url }
  end
    
end
