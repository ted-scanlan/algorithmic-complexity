

class TimingFramework

  def initialize(steps, step_size, no_of_runs)
    @steps = steps
    @step_size = step_size
    @no_of_runs = no_of_runs

  end

  def run
    @result = {}


  end


def get_array(step)
  array_size = (step * @step_size)
  @array = (0 - array_size-1).to_a

end


def set_up

(0..@no_of_runs).each do |run|
  (0..@steps).each do |step|
    puts "run: #{run}, step: #{step}"
     get_array(step)
     run_time = get_duration
     save_result(run_time, step)
  end
end
puts "COMPLETED"
end

def get_duration
  begin_time = Time.now
  run_algorithm
  duration = Time.now - begin_time

end

def run_algorithm

  algorithm (@array)

end

def save_result(run_time, step)
  

end


# (5000..100000).each {|x|
# if x % 5000 == 0
#   beginning_time = Time.now
#  (0..x).to_a.last
#  end_time = Time.now
#  puts "size: #{0} - #{x} Time: #{(end_time - beginning_time)*1000}"
# end



}


end
