
def shuffle(array)
	new_array = []
  until array.empty? do
  random_index = rand array.length
  new_array << array[random_index]
  array[random_index] = array.last
  array.pop
  end
  new_array

end
