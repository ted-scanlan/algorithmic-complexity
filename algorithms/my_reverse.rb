def my_reverse(array)

  reversed_array = []
  array.each do |num|
    reversed_array << (array[-1])
    array = array[0..-2]
  end

  reversed_array

end
