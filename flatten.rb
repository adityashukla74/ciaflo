def make_flat(array)
  result = []

  array.each do |x|
    if x.is_a? Array
      result.concat(x)
    else
      result << x
    end
  end

  return result
end

#example
# flatten [[1,2,3],["a","b","c"],[1,2,3]]  # => [1,2,3,"a","b","c",1,2,3]