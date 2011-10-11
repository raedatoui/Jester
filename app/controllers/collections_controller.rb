class CollectionsController < InheritedResources::Base
  respond_to :html, :json
  
  belongs_to :project
  
  def create
    create! { collection_url }
  end
    
end
