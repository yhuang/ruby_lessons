class Simon
  def echo(msg)
    msg
  end

  def shout(msg)
    msg.upcase
  end

  def repeat(msg, count = 2)
    msg_array = []

    count.times do
      msg_array << msg
    end

    msg_array.join(' ')
  end

  def start_of_word(msg, num)
    msg[0, num]
  end

  def first_word(msg)
    msg.split(/ /)[0]
  end
end