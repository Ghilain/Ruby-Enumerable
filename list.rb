require_relative './enumerable'

class MyList
  include MyEnumerable

	def initialize(*elems)
    @list = elems
  end

  def each(&block)
    @list.each(&block)
  end
end

new_list = MyList.new(1, 2, 3, 4)

# Test #all?
p(new_list.all? {|e| e < 5}) 
#  true
p(new_list.all? {|e| e > 5} )
# false

# Test #any?
p(new_list.any? {|e| e == 2})
# true
p(new_list.any? {|e| e == 5})
# false
