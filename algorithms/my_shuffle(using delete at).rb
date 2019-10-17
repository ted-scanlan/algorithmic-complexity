def shuffle(array)

  new_array = []
  until array.empty? do
    random_index = rand array.length
    new_array << array[random_index]
    array.delete_at(random_index)
  end
  new_array
end
