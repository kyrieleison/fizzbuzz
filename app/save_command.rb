class SaveCommand

  def initialize(printer, logger, filer)
    @printer = printer
    @logger = logger
    @filer = filer
  end

  def run
    @printer.puts("Fizzbuzz 履歴保存モード")
    log = @logger.all
    @filer.write(log)
    @printer.puts("履歴を保存しました")
  end
end
