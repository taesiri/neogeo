def requirementsScripts
  if @item[:requirementsScripts].nil?
    '(none)'
  else
    @item[:requirementsScripts]
  end
end

def requirementsStyles
  if @item[:requirementsStyles].nil?
    '(none)'
  else
    @item[:requirementsStyles]
  end
end