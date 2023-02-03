module MyEnumerable
  def all?
    each { |item| return false unless yield item }
    true
  end

  def any?
    each { |item| return true if yield item }
    false
  end

  def filter
    filter_array = []
    each { |item| filter_array.push(item) if yield item }
    filter_array
  end
end