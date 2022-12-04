letters = ('a'..'z').to_a | ('A'..'Z').to_a

input = File.open('input.txt').read

items = input.split("\n").map do |compartment| 
  chars = compartment.split('')
  first, second = [chars[0...chars.length/2], chars[chars.length/2..-1]]
  common = first & second
  common.sum { |item| letters.index(item) + 1 }
end

puts items.sum
