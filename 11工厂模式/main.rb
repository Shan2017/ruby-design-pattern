require_relative 'factory'

factory = Factory.new
pro = factory.create_product 'Product1'
pro.func1

pro = factory.create_product 'Product2'
pro.func1
