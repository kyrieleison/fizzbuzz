require 'filer'

class SaveCommand

  def initialize(logger, filer)
    @logger = logger
    @filer = filer
  end

  def run
    log = @logger.all
    @filer.write(log)
  end
end
