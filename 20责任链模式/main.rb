require_relative 'project_manager'
require_relative 'dept_manager'
require_relative 'general_manager'

d = DeptManager.new
p = ProjectManager.new
g = GeneralManager.new

p.successor = d
d.successor = g

p.handle_fee_request(500)
p.handle_fee_request(5000)
