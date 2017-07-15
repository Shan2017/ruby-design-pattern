require_relative 'proxy'
require_relative 'subject'

proxy = Proxy.new Subject.new
proxy.request
