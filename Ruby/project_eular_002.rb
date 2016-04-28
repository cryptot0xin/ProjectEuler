#!/usr/bin/env ruby
# Problem:      Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#                       1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#   By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
#
# Link:             http://projecteuler.net/problem=2
##############################################################################
def fibonacci(n)
    return n if n < 2
    fib_vals = [0, 1]
    (n-1).times do
        fib_vals.push(fib_vals[-1] + fib_vals[-2])
    end
    return fib_vals.last
end
 
i = 1
sum = 0
while((v = fibonacci(i)) < 4_000_000)
    sum+=v if v%2==0
    i+=1
end
puts "Project Euler 2 Answer: #{sum}"