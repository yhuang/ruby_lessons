class PerformanceMonitor
  def run(num = 1)
    start_time = Time.now

    num.times do
      yield
    end

    end_time = Time.now

    (end_time - start_time) / num
  end
end