class Person
  attr_accessor :age, :name, :gender

  def initialize(age, name, gender)
    @age = age
    @name = name
    @gender = gender
  end

  def to_s
    "age=#{age},name=#{name},gender=#{gender}"
  end
end
