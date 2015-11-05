require '../array_mod'

class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end
  
  def sum
    fibonacci = [1, 2]
    while true
      break if fibonacci[-1] + fibonacci[-2] >= @limit
      fibonacci << fibonacci[-1] + fibonacci[-2]
    end
    fibonacci.select {|num| num.even?}.sum
  end
end