def caesar_cipher(word, range)
  uppercase_letters = ("A".."Z").to_a
  lowercase_letters = ("a".."z").to_a

  result = ""
  word.split("").to_a.each do |x|
    if uppercase_letters.include? x
      result += uppercase_letters[ (uppercase_letters.index(x) + range) % 26]
    elsif lowercase_letters.include? x
      result += lowercase_letters[ (lowercase_letters.index(x) + range) % 26]
    else
      result += x
    end
  end
  puts result
end

word = "What a string!"
caesar_cipher(word, 5)
