require_relative 'invoker'

i = Invoker.new GzipUncompressCommand.new
i.ok
