class AllVowels
  include Enumerable

  @@vowels = %w(a e i o u)

  def each
    @@vowels.each { |v| yield v }
  end
end

x = AllVowels.new
puts x.collect { |i| i + 'x' }

puts x.max
