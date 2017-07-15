require_relative 'benz_factory'
require_relative 'bmw_factory'

a = BMWFactory.new
a.create_sport

a = BMWFactory.new
a.create_suv

a = BenzFactory.new
a.create_sport

a = BenzFactory.new
a.create_suv
