def substrings(word, dict)
  my_hash = Hash.new
  arr = word.split.to_a
  dict.each do |str|
    num = 0
    arr.each do |letter|
      if letter.downcase.include? str
        num += 1
      end
    end
    if num > 0
      my_hash[str] = num
    end
  end
  puts my_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)