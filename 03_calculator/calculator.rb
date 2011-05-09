class Calculator
  attr_accessor :name, :num_calculations

  def initialize(name="no name")
    @name = name
    @num_calculations = 0
  end

  def add(a, b)
    @num_calculations += 1
    a + b
  end

  def sum(ary)
    @num_calculations += 1
    sum = ary.inject do |tot, elem|
      tot + elem
    end

    if sum.nil?
      sum = 0
    end

    sum
  end

  def product(ary)
    @num_calculations += 1
    product = ary.inject(1) do |prd, elem|
      prd * elem
    end

    product
  end

  def exp(a, b)
    product = 1

    b.times do
      product *= a
    end

    product
  end

  def factorial(a)
    if a == 0
      return 1
    end

    a * factorial(a - 1)
  end
end