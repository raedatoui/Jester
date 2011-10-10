class CollectionsController < InheritedResources::Base
  nested_belongs_to :project
end
