require 'interface'

class InputerStub
  
  def initialize(input)
    @input = input
  end

  def gets
    @input
  end
end

class PrinterSpy

  def print(arg)
    @arg = arg
  end

  def result
    @arg
  end
end

describe Interface do
  let(:inputer) { InputerStub.new(input) }
  let(:printer) { PrinterSpy.new }
  let(:interface) { Interface.new(inputer, printer) }

  context 'メニュー選択で1を選択した場合' do
    context '正常系' do
      let(:input) { "3" }

      it do
        interface.start("1")
        expect(printer.result).to eq("Fizz")
      end
    end

    context 'FizzBuzzに整数以外の値を入力した場合' do
      let(:input) { "A" }

      it do
        interface.start("1")
        expect(printer.result).to be_nil
      end
    end
  end

  context 'メニュー選択で2を選択した場合' do
    let(:input) { nil }

    it do
      interface.start("2")
      expect(printer.result).to be_nil
    end
  end
end
