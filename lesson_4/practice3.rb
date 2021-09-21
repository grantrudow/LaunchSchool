ages = { 
  "Herman" => 32, 
  "Lily" => 30, 
  "Grandpa" => 402, 
  "Eddie" => 10 
}

p ages.select { |key, value| value < 100 }

# Solution
ages.keep_if { |key, value| value < 100}