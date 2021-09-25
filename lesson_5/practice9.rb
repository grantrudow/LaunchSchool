hsh = {
  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']
}

vowels = 'aeiou'

hsh.each_value do |strings|
  strings.each do |string|
    string.chars.each do |letter|
      if vowels.include?(letter) 
        puts letter
      end
    end
  end
end