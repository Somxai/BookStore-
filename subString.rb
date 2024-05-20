 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


 def subs_string(word, dictionary)

  result_found = Hash.new(0)


  word.split(/\W+/).each do |wd|
    p wd

  dictionary.each do |sub_string|
    p sub_string
    if wd.downcase.include?(sub_string.downcase)

      result_found[sub_string] += 1

    end
  end
  end
  result_found

 end


 print subs_string("Howdy partner, sit down! How it going?" , dictionary)
