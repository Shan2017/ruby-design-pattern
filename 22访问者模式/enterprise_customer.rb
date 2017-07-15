class EnterpriseCustomer
  def accept(visitor)
    visitor.visit_enterprise_customer self
  end

  def test(str)
    puts "enterprise customer:#{str}"
  end
end
