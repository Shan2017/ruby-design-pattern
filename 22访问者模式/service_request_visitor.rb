class ServiceRequestVisitor
  def visit_enterprise_customer(element)
    element.test self.class.to_s
  end

  def visit_personal_customer(element)
    element.test self.class.to_s
  end
end
