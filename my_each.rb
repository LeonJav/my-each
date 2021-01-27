require 'pry'

def my_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i = i + 1
  end
  array
end


def my_collect(array)
  i = 0
  new_array = []
  while i < array.length
    binding.pry
    new_array << yield(array[i])
    binding.pry
    i += 1
  end
  new_array
end