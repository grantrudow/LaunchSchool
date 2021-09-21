produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_array)
  selected_fruit = produce_array.select { |key, value| value == 'Fruit'}
end

p select_fruit(produce)

# Given Answer

def select_fruit2(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruit = Hash.new

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruit[current_key] = current_value
    end
    counter += 1
  end

  selected_fruit
end

p select_fruit2(produce)