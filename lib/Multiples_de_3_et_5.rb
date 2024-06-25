def sum_of_multiples(n)

  (1...n).select { |i| i % 3 == 0 || i % 5 == 0 }.sum

end
