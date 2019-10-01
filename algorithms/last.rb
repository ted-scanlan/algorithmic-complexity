beginning_time = Time.now

x = (1..10000).to_a.last
end_time = Time.now

puts "Time = #{(end_time - beginning_time)*1000} milliseconds"
