def fibs(n)
  fib_array = []
  if n >= 1
    fib_array << 0
  end
  if n >= 2
    fib_array << 1
  end
  i = 2
  while i < n
    fib_array << fib_array[i-1] + fib_array[i-2]
    i += 1
  end
  return fib_array
end


def fibs_rec(n, fib_array=[0,1])
  return fib_array[0...n] if n <= fib_array.length
  fibs_rec(n, fib_array << fib_array[-1] + fib_array[-2])
end
