(5000..100000).each {|x|
if x % 5000 == 0
  beginning_time = Time.now
 (0..x).to_a.last
 end_time = Time.now
 puts "size: #{0} - #{x} Time: #{(end_time - beginning_time)*1000}"
end

}
