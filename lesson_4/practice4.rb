ages = { 
  "Herman" => 32, 
  "Lily" => 30, 
  "Grandpa" => 5843, 
  "Eddie" => 10, 
  "Marilyn" => 22, 
  "Spot" => 237 
}

new_age = 100

ages.each do |name, age| 
  
  if age < new_age
    new_age = age
  else
    new_age
  end
end

p new_age

# Solution

p ages.values.min