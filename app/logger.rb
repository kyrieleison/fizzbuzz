class Logger
  
  def initialize
    @data = []
  end

  def add(data)
    @data << data
  end

  def all
    @data
  end
end
