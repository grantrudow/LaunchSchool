def swap(string)
  string_arr = string.split

  string_arr.map do |word|
    last = word[-1]
    first = word[0]
    
    word[0] = last
    word[-1] = first
  end

  string_arr.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'