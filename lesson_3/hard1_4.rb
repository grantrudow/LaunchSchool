def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  p dot_separated_words

  if dot_separated_words.size == 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      break unless is_an_ip_number?(word)
    end
  else
    "Invalid entry"
  end


  return true
end

p dot_separated_ip_address?("1.2.3.4")
p dot_separated_ip_address?("1.2.3")
p dot_separated_ip_address?("1.2.3.4.5")