letters = ('a'..'z').to_a | ('A'..'Z').to_a

input = File.open('input.txt').read.split("\n")

results = []
items = input.each_slice(3) do |group| 
  common = group[0].split('') & group[1].split('') & group[2].split('')
  results << common.sum { |item| letters.index(item) + 1 }
end

puts results.sum
