require_relative 'object_structure'
require_relative 'predilection_analyze_visitor'
require_relative 'service_request_visitor'
require_relative 'personal_customer'
require_relative 'enterprise_customer'

os = ObjectStructure.new
personal_customer = PersonalCustomer.new
enterprise_customer = EnterpriseCustomer.new
os << personal_customer
os << enterprise_customer

p_visitor = PredilectionAnalyzeVisitor.new
os.handle_request p_visitor

s_visitor = ServiceRequestVisitor.new
os.handle_request s_visitor
