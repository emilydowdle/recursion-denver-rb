def append(arr, n)
  arr << n
  return arr if n == 0
  append(arr, n - 1)
end

def append2(arr, n)
  return arr if n < 0
  arr << note
  append(arr, n - 1)
end


puts append([], 2).inspect # = [2, 1, 0]
puts append([], 3).inspect # = [3, 2, 1, 0]
