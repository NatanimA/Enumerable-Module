module MyEnumerable
  def all?
    each do |e|
      return true unless block_given?
      return false unless yield(e)
    end
    true
  end

  def any?
    each do |e|
      return true unless block_given?
      return true if yield(e)
    end
    false
  end

  def enum_filter?
    arr = []
    each { |e| arr.push(e) if yield(e) }
    arr
  end
end
