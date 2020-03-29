nums = []

3.times do
  nums.push(gets.to_i)
end

nums.each do |num|
  puts num ** 2
end