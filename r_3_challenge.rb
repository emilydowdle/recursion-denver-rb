def reverse_append(arr, n)
  return arr if n < 0
  reverse_append(arr, n - 1)
  arr << n
  arr
end

reverse_append([], 0) # [0]
reverse_append([], 1) # [0, 1]
reverse_append([], 2) # [0, 1, 2]
