require_relative './module'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    0.upto(@list.length - 1) do |x|
      yield @list[x]
    end
  end
end

list = MyList.new(1, 2, 3, 4, 5, 7, 56, 56, 67)

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts(list.all? { |e| e < 67 })
puts(list.all? { |e| e > 67 })
puts(list.any? { |e| e == 5 })
puts(list.any? { |e| e == 7 })
puts(list.enum_filter?(&:even?))
