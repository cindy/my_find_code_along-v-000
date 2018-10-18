require 'pry'

def my_find(collection)
  i = 0
  finds = []
  if block_given?
    while i < collection.size
      #binding.pry
      finds << collection[i] if yield(collection[i])
      #binding.pry
      i += 1
    end
  else
    finds << yield
  end
  finds
end


#puts my_find([1,2,3]){ |i| i ==3 }
