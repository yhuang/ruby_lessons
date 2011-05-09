class Book
  def title=(t)
    title_array = []

    t.split(/ /).each do |w|
      case w
        when /^the$|^a$|^was$/
          title_array << w.downcase
        else
          title_array << w.capitalize
      end
    end

    @title = title_array.join(" ")
  end

  def title
    @title
  end
end