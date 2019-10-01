x = [2, 3, 4, 5, 6, 7]

result = []

(x.count).times {
  count = x.count - 1
  result.push x.delete_at(rand(0..count))
  count -= 1
}
puts result
