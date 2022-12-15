require_relative './module'

class EnumList
    include Enumerable

    def initialize(*list)
        @list = list
    end

    def each
        0.upto(@list.length - 1) do |x|
            yield @list[x]
        end
    end
end

list = EnumList.new(4,67,8,7,45,8,1,3,2,9)

puts(list.all? { |e| e < 67})
puts(list.all? { |e| e > 67})
puts(list.any? { |e| e == 5})
puts(list.any? { |e| e == 7})
puts(list.enum_filter?(&:even?))