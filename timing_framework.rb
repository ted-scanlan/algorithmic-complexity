require './algorithms/my_reverse'

require 'csv'

class TimingFramework

  def initialize(steps, step_size, no_of_runs)
    @steps = steps
    @step_size = step_size
    @no_of_runs = no_of_runs

  end

  def run
    @results = {}
    @averaged_results = {}

    set_up
    get_averages
      print @results



  end


def get_array(step)
  array_size = (step * @step_size)
   @array = * (0..array_size-1).map { rand }

end


def set_up

(1..@no_of_runs).each do |run|
  (1..@steps).each do |step|
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

def get_averages

  @results.each do |key, values|
  sum = 0
    values.each do |val|
    sum += val
      end
      sum = sum/3
      @averaged_results[key] = sum
    end

end

def run_algorithm

  my_reverse(@array)

end

def save_result(run_time, step)
if @results[@step_size * step].nil?
@results[@step_size * step] = [run_time]
else
  @results[@step_size * step] << run_time
end
end


# (5000..100000).each {|x|
# if x % 5000 == 0
#   beginning_time = Time.now
#  (0..x).to_a.last
#  end_time = Time.now
#  puts "size: #{0} - #{x} Time: #{(end_time - beginning_time)*1000}"
# end






end
