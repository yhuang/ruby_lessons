class Timer
  def initialize
    @time_obj = Time.gm(1970, 1, 1, 0, 0, 0)
  end

  def seconds
    @time_obj.strftime("%s").to_i
  end

  def seconds=(sec)
    @time_obj += sec
    self.seconds
  end

  def time_string
    @time_obj.strftime("%H|%M|%S")
  end
end