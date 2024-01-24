def increase_by_half(number)
  return number + (number / 2)
end

value = 42
36.times do
  value = increase_by_half(value)
end

puts value