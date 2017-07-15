require_relative 'gzip_receiver'
require_relative 'zip_receiver'

class Command
  def initialize
    @zip = ZipReceiver.new
    @gzip = GzipReceiver.new
  end

  def execute
    raise 'abstract class method : execute'
  end
end

class ZipCompressCommand < Command
  def execute
    @zip.compress
  end
end

class ZipUncompressCommand < Command
  def execute
    @zip.uncompress
  end
end

class GzipCompressCommand < Command
  def execute
    @gzip.compress
  end
end

class GzipUncompressCommand < Command
  def execute
    @gzip.uncompress
  end
end
