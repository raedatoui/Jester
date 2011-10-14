module CollectionsHelper
  def nested_collections(collections)
    collections.map do |collection, sub_collections|
      render(collection) + content_tag(:div, nested_collections(sub_collections), :class => "nested_messages")
    end.join.html_safe
  end

  def get_level_1(collections)
    collections.map do |collection, sub_collections|

      if collection.is_root?  
        render(collection)
      end
    end.join.html_safe
  end  
  
  def get_level_2(collections)
    collections.map do |collection, sub_collections|
        render(collection)
    end.join.html_safe
  end
  
  def get_collection_path(collection)
    collection.path.collect{|p| p.name}.join(" >> ")
    
  end  
end
