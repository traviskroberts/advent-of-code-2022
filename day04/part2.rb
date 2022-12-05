input = File.open('input.txt').read.split("\n")

results = input.reject do |pair|
  elf1, elf2 = pair.split(',')
  range1a, range1b = elf1.split('-').map(&:to_i)
  range2a, range2b = elf2.split('-').map(&:to_i)

  range1b < range2a || range1a > range2b
end

puts results.length
