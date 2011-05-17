class Machine
  def do_something(num = 1)
    value = nil

    num.times do
      value = yield
    end

    value
  end
end