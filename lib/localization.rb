def language_code_of(item)
  # "/en/foo/" becomes "en"
  (item.identifier.match(/^\/([a-z]{2})\//) || [])[1]
end

def language_name_of(item)
  language_name_for_code(
      language_code_of(item))
end

def translations_of(item)
  @items.select do |i|
    i[:canonical_identifier] == item[:canonical_identifier]
  end
end

def language_name_for_code(code)
  LANGUAGE_CODE_TO_NAME_MAPPING[code]
end

def get_translation_path
  if @item[:translate_path] != nil
    @item[:translate_path]
  else
    '(none)'
  end
end


LANGUAGE_CODE_TO_NAME_MAPPING = {
    'en' => 'English',
    'fa' => 'Persian'
}