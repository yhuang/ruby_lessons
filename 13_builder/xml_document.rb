class XmlDocument
  def initialize(indent=false)
    @indent = indent
    @level = 0
  end

  def method_missing(m, *args, &block)
    @level += 1

    tag = "<#{m}"

    if args.empty?
      if block_given?
        tag += ">" + indent(@level, true) + block.call + indent(@level, false) + "</#{m}>"
      else
        tag += "/>"
      end
    else
      args.each do |elem|
        elem.each do |key, value|
          tag += " #{key}='#{value}'"
        end
      end

      if block_given?
        tag += ">" + indent(@level, true) + block.call + indent(@level, false) + "</#{m}>"
      else
        tag += "/>"
      end
    end

    @level -= 1

    if @indent && @level == 0
      tag += "\n"
    end

    tag
  end

  def indent(level, is_open)
    return '' unless @indent

    indent = "\n"

    if is_open
      indent += ' ' * level * 2
    else
      indent += ' ' * (level - 1) * 2
    end

    indent
  end
end