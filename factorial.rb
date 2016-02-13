def factorial_iterative(n)
  if n == 0
    return 1
  end
  counter = n
  while counter > 1
    n *= counter - 1
    counter -= 1
  end
  n
end

def factorial_recursive(n)
  if n == 0
    return 1
  end
  n * factorial_recursive(n-1)
end
