module ProjectHelper
  def get_level_1(collections)
    collections.map do |collection, sub_collections|

      if collection.is_root?  
        render(collection)
      end
    end.join.html_safe
  end
end
