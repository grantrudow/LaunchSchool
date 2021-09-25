arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |hash|
  new_hash = {}
  hash.each do |key, value|
    new_hash[key] = value + 1
  end
  p new_hash
end
