class AssetsController < InheritedResources::Base
   nested_belongs_to :project, :collection

   def create
     create! { parent_url }
   end
   
   def destroy 
      destroy! { parent_url}
   end    
   
end
