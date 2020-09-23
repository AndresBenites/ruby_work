def fibs(int)
  fib_a = []
  for i in 0..int
    fib_a << 0 if i == 0
    fib_a << 1 if i == 1
    fib_a << fib_a[i - 1] + fib_a[i - 2] if i > 1
  end
  return fib_a
end

p fibs(12)

def fibs_rec(int, fib_a = [0, 1])
    if int < 2
        return fib_a
    else
        return fibs_rec(int - 1, fib_a << fib_a[-2] + fib_a[-1])
    end
end

p fibs_rec(12)