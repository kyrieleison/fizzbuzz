class Fizzbuzz

  def initialize(number)
    @number = number
  end

  def exec
    return "FizzBuzz" if @number % 15 == 0
    return "Fizz" if @number % 3 == 0
    return "Buzz" if @number % 5 == 0
    @number.to_s
  end
end
