require 'fizzbuzz'

describe Fizzbuzz do
  it do
    fizzbuzz = Fizzbuzz.new(3)
    expect(fizzbuzz.exec).to eq("Fizz")
  end

  it do
    fizzbuzz = Fizzbuzz.new(5)
    expect(fizzbuzz.exec).to eq("Buzz")
  end

  it do
    fizzbuzz = Fizzbuzz.new(15)
    expect(fizzbuzz.exec).to eq("FizzBuzz")
  end

  it do
    fizzbuzz = Fizzbuzz.new(2)
    expect(fizzbuzz.exec).to eq("2")
  end
end
