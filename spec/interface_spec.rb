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
        expect(logger.all).to eq(["3 : Fizz"])
      end
    end

    context 'FizzBuzzに整数以外の値を入力した場合' do
      let(:input) { "A" }

      it do
        interface.start("1")
        expect(logger.all).to be_empty
      end
    end
  end

  context 'メニュー選択で2を選択した場合' do
    let(:input) { nil }

    it do
      logger.add("3", "Fizz")
      logger.add("5", "Buzz")
      interface.start("2")
      aggregate_failures do
        expect(printer.result.include?("3 : Fizz")).to be_truthy
        expect(printer.result.include?("5 : Buzz")).to be_truthy
      end
    end
  end
end
