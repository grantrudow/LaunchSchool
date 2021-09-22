def print_in_box(phrase)
  dashes_count = phrase.length + 2
  empty_line = "|" + (" "*dashes_count) + "|"
  top_line = "+" + ("-"*dashes_count) + "+"
  
  puts top_line
  puts empty_line
  puts "| " + (phrase) + " |"
  puts empty_line
  puts top_line

end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box("I'm getting good at this!")