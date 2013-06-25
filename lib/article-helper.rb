# Returns all items
def all_items
  defined?(@items) ? @items : (@pages + @assets)
end

def get_kind
  if @item[:kind].nil?
    '(none)'
  else
    @item[:kind]
  end
end

def get_article_name
  if @item[:article_name].nil?
    '(none)'
  else
    @item[:article_name]
  end
end

def get_article_parent
  if @item[:article_parent].nil?
    'Custom Pages'
  else
    @item[:article_parent]
  end
end

def get_article_parent_path
  if @item[:article_parent_path].nil?
    'Custom Pages'
  else
    @item[:article_parent_path]
  end
end

def kind_of(item)
  if item[:kind].nil?
    '(none)'
  else
    item[:kind]
  end
end

def parent_of(item)
  if item[:article_parent].nil?
    '(none)'
  else
    item[:article_parent]
  end
end

def get_article_name_of(item)
  if item[:article_name].nil?
    '(none)'
  else
    item[:article_name]
  end
end

def get_article_description_of(item)
  if item[:article_description].nil?
    'Description not available!'
  else
    item[:article_description]
  end
end

def get_article_logo_of(item)
  if item[:article_logo_path].nil?
    'Description not available!'
  else
    item[:article_logo_path]
  end
end

def get_all_articles
  all_items.select { |i| !kind_of(i).nil? && kind_of(i) == 'article'}
end

def get_all_articles_of(parent)
  all_items.select { |i| !kind_of(i).nil? && kind_of(i) == 'article' && parent_of(i) == parent}
end
