input = File.open('input.txt').read
sums = input.split("\n\n").map do |group|
  group.split("\n").map(&:to_i).sum
end
puts sums.max
