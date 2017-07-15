class PersonalCustomer
  def accept(visitor)
    visitor.visit_personal_customer self
  end

  def test(str)
    puts "personal customer:#{str}"
  end
end
