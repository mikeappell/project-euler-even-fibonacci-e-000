require '../array_mod'

def even_fibonacci_sum(limit)
  fibonacci = [1, 2]
  while true
    break if fibonacci[-1] + fibonacci[-2] >= limit
    fibonacci << fibonacci[-1] + fibonacci[-2]
  end
  fibonacci.select {|num| num.even?}.sum
end