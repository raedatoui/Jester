class CollectionsController < InheritedResources::Base
  belongs_to :project, :polymorphic => true
end
