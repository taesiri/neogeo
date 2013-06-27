def get_evetns(lang)
  event_list = []
  if (lang == 'en')
    fname = "data/events-en.txt"

  else
    if (lang == 'fa')
      fname = "data/events-fa.txt"
    end
  end

  File.open(fname, 'r').each_line do |line|
    line = line.strip.split ','
    event_list  << line
  end
  event_list
end