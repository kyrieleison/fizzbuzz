require 'interface'
require 'logger'
require 'helpers/inputer_stab'
require 'helpers/printer_spy'

describe Interface do
  let(:inputer) { InputerStub.new(input) }
  let(:printer) { PrinterSpy.new }
  let(:logger) { Logger.new }
  let(:interface) { Interface.new(inputer, printer, logger) }

  context 'メニュー選択で1を選択した場合' do
    context '正常系' do
      let(:input) { "3" }

      it do
        interface.start("1")
        expect(printer.result).to eq(["Fizz"])
      end
    end

    context 'FizzBuzzに整数以外の値を入力した場合' do
      let(:input) { "A" }

      it do
        interface.start("1")
        expect(printer.result).to be_empty
      end
    end
  end

  context 'メニュー選択で2を選択した場合' do
    let(:input) { nil }

    it do
      logger.add("3", "Fizz")
      logger.add("5", "Buzz")
      interface.start("2")
      expect(printer.result).to eq(["3 : Fizz", "5 : Buzz"])
    end
  end
end
