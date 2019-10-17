require './algorithms/my_reverse'
require './algorithms/reverse'

require 'csv'

class TimingFramework
  DEFAULT_STEPS = 20
  DEFAULT_STEP_SIZE = 5000
  DEFAULT_NO_OF_RUNS = 3

  def initialize(steps = DEFAULT_STEPS, step_size = DEFAULT_STEP_SIZE, no_of_runs = DEFAULT_NO_OF_RUNS)
    @steps = steps
    @step_size = step_size
    @no_of_runs = no_of_runs

  end

  def run
    time_start = Time.now
    @results = {}
    @averaged_results = {}
    set_up
    get_averages
    save_results
    time_end = Time.now - time_start
    print "total time taken: #{time_end}. Please see results stored in file"

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
        get_results(run_time, step)
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
      sum = sum/(values.length)
      @averaged_results[key] = sum
    end

  end

  def run_algorithm

    reverse(@array)

  end

  def get_results(run_time, step)
    if @results[@step_size * step].nil?
      @results[@step_size * step] = [run_time]
    else
      @results[@step_size * step] << run_time
    end
  end

  def save_results
    CSV.open('RESULTS', 'w') do |csv|
      @averaged_results.each do |key, value|
        csv << [key, value]
      end
    end
    puts 'File Saved'
  end


end
