def crunch(words)
  counter = 0
  crunch_text = ''

  while counter <= words.length - 1
    crunch_text << words[counter] unless words[counter] == words[counter + 1]
    counter += 1
  end
  crunch_text
end

p  crunch('ddaaiillyy ddoouubbllee')  == 'daily double'
p  crunch('4444abcabccba') == '4abcabcba'
p  crunch('ggggggggggggggg') == 'g'
p  crunch('a') == 'a'
p  crunch('') == ''