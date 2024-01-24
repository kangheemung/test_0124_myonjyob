def three_of_a_kind?(number)
  number.to_s.chars.chunk_while { |i, j| i == j }.any? { |group| group.size >= 3 }
end

sum = 0
(1..250000).each do |num|
  sum += num if three_of_a_kind?(num)
end

puts sum
