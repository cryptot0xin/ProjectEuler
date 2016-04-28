#!/usr/bin/env ruby
# Problem:      If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#   Find the sum of all the multiples of 3 or 5 below 1000.
#
# Link:             http://projecteuler.net/problem=1
##############################################################################
# Natural Numbers:  Z+ = { 1, 2, 3, 4, 5, ...}      : Positive Integers
sum = 0
 
1000.times do |i|
    if i % 3 == 0 || i % 5 == 0
        sum += i
    end
end
 
puts "Project Euler 1 Answer: #{sum}"