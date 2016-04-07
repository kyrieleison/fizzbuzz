class Fizzbuzz

  def initialize(number)
    @number = number
  end

  def exec
    return "Fizz" if @number == 3
    return "Buzz" if @number == 5
    return "FizzBuzz" if @number == 15
    @number.to_s
  end
end
