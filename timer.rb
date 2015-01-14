class Timer
  attr_accessor :seconds
  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    hour = @seconds / 3600
    left = @seconds - 3600 * hour
    min = left / 60
    sec = left - 60 * min
    format('%02d',hour)+":"+format('%02d',min)+":"+format('%02d',sec)
  end



end