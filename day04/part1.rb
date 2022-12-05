input = File.open('input.txt').read.split("\n")

results = input.select do |pair|
  elf1, elf2 = pair.split(',')
  range1a, range1b = elf1.split('-').map(&:to_i)
  range2a, range2b = elf2.split('-').map(&:to_i)

  (range1a <= range2a && range1b >= range2b) ||
  (range1a >= range2a && range1b <= range2b)
end

puts results.length
