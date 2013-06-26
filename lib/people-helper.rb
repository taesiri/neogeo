def get_students(grade,lang)

  fname = ''

  if (lang == 'en')
    if (grade == 'ms')
      fname = "data/msc-en.txt"
    else if (grade == 'phd')
           fname = "data/phd-en.txt"
         end
    end

  else if  (lang == 'fa')
         if (grade == 'ms')
           fname = "data/msc-fa.txt"
         else if (grade == 'phd')
                fname = "data/phd-fa.txt"
              end
         end
       end
  end

  students = []
  File.open(fname, 'r').each_line do |line|
    line = line.strip.split ','
    students  << line
  end
  students.sort

end

def get_faculties(lang)
  teachers = []
  if (lang == 'en')
    fname = "data/faculties-en.txt"
    File.open(fname, 'r').each_line do |line|
      line = line.strip.split ','
      teachers  << line
    end
  end
  teachers.sort
end