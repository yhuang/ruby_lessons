class Simon
  def echo(msg)
    msg
  end

  def shout(msg)
    msg.upcase
  end

  def repeat(msg, count = 2)
    msg_ary = []

    count.times do
      msg_ary << msg
    end

    msg_ary.join(' ')
  end

  def start_of_word(msg, num)
    msg[0, num]
  end

  def first_word(msg)
    msg.split(/ /)[0]
  end
end