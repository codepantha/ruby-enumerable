module MyEnumerable
  # MyAll module
  def my_all?
    return unless block_given?

    response = false
    @list.each do |n|
      response = true if yield(n)
    end
    response
  end

  # MyAny module
  def my_any?
    return unless block_given?

    any = false
    @list.each do |n|
      any = true if yield(n)
    end
    any
  end

  # MyEnumerable module

  def filter
    filtered = []
    @list.each do |item|
      filtered.push(item) if yield(item)
    end
    filtered
  end
end
