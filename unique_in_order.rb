=begin
Implement the function unique_in_order which takes as argument a sequence 
and returns a list of items without any elements with the same value 
next to each other and preserving the original order of elements.

Example:
unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
unique_in_order([1,2,2,3,3])       == [1,2,3]
=end


def unique_in_order(iterable)
  uniques = []
  iterable = iterable.kind_of?(Array) ? iterable : iterable.chars
  iterable.map { |i| uniques.push(i) if !(uniques.last == i) }
  uniques
  puts uniques
end

iterable = 'ABBCcAD'
unique_in_order(iterable)

# clever one line solution from codewars
# (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
