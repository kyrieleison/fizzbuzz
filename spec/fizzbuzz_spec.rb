require 'fizzbuzz'

describe Fizzbuzz do
  let(:fizzbuzz) { Fizzbuzz.new(number) }

  context '3の倍数の場合' do
    let(:number) { 3 }

    it do
      expect(fizzbuzz.exec).to eq("Fizz")
    end
  end

  context '5の倍数の場合' do
    let(:number) { 5 }

    it do
      expect(fizzbuzz.exec).to eq("Buzz")
    end
  end

  context '15の倍数の場合' do
    let(:number) { 15 }

    it do
      expect(fizzbuzz.exec).to eq("FizzBuzz")
    end
  end

  context '3の倍数・5の倍数・15の倍数以外の場合' do
    let(:number) { 2 }

    it do
      expect(fizzbuzz.exec).to eq("2")
    end
  end
end
