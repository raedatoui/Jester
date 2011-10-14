class CollectionsController < InheritedResources::Base
  respond_to :html, :json
  
  belongs_to :project

  def index
    
  end  
    
  def create
    create! { @collection.is_root? ? parent_url : resource_path(@collection.parent) }
  end
  
  def new
    unless params[:parent_id].nil?
      @collection = Collection.new(:parent_id => params[:parent_id])
    end
    new!
  end
    
end
