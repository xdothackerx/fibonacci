def fibonacci(n)
  raise "Input must be positive number." unless n.is_a?(Numeric) && n > -1

  # base case
  return 0 if n == 0
  return 1 if n == 1

  # general case
  fibonacci(n-1) + fibonacci(n-2)
end


