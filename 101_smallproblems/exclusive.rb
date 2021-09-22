def xor?(n1, n2)
  if n1 && n2
    false
  elsif n1 || n2
    true
  else
    false
  end

end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)