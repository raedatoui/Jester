class AssetsController < InheritedResources::Base
  nested_belongs_to :project, :collection
end
