class AssetsController < InheritedResources::Base
   nested_belongs_to :project, :collection

   def create
     create! { collection_url }
   end
   
end
