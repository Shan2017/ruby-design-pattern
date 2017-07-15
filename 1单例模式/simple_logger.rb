require 'singleton'

class SimpleLogger
  include Singleton

  ERROR = 1
  WARNING = 2
  INFO = 3

  attr_accessor :level

  def initialize
    @log = File.open('log.txt', 'w')
    @level = WARNING
  end

  def error(msg)
    @log.puts msg if @level == ERROR
    @log.flush
  end

  def warning(msg)
    @log.puts msg if @level >= WARNING
    @log.flush
  end

  def info(msg)
    @log.puts msg if @level >= INFO
    @log.flush
  end
end
