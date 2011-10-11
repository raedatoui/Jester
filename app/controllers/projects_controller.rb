class ProjectsController < InheritedResources::Base
  respond_to :html, :json

  def create
    create! { collection_url }
  end
    
end
