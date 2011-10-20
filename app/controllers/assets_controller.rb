class AssetsController < InheritedResources::Base
   nested_belongs_to :project, :collection
   protect_from_forgery :except => [:create]
   
   def create
     @asset = Asset.new
     @asset.file = params[:file] if params.has_key?(:file) 
     @asset.content_type = MIME::Types.type_for(params[:name]).to_s if params.has_key?(:name)
     @asset.size = @asset.file.size 
     @asset.collection_id = params[:collection_id]  
     @asset.save
     respond_to :js
   end
   
   # def destroy 
   #    destroy! { parent_url}
   # end    
   
end
