# frozen_string_literal: true

# MyEnumerable module
module MyEnumerable
  def filter
    filtered = []
    each { |item| filtered.push(item) if yield item }
    filtered
  end
end
