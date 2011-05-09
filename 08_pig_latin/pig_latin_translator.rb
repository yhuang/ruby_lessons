module PigLatinTranslator
  def translate_word(word)
    reg_exp = Regexp.new(/(qu|[^aeiouy]*)([aeiouy]+\w*)/)
    match_data = reg_exp.match(word)

    if match_data.nil?
      return ''
    elsif match_data[1].nil?
      return match_data[2] + 'ay'
    else
      return match_data[2] + match_data[1] + 'ay'
    end
  end

  def translate(msg)
    words_array = []

    msg.split(/ /).each do |w|
      words_array << translate_word(w)
    end

    words_array.join(" ")
  end
end