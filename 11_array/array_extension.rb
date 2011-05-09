module ArrayExtension
  def sum
    inject(0) do |sum, i|
      sum + i
    end
  end
end

class Array
  include ArrayExtension
end