# frozen_string_literal: true

require_relative 'my_enumerable'

# MyList class
class MyList
  include MyEnumerable

  def initialize(*a_list)
    @list = a_list
  end

  def each
    @list.each { |i| yield i if block_given? }
  end
end

list = MyList.new(1, 2, 3, 4)
puts list.filter(&:even?)
