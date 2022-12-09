input = File.read('input.txt').chars

char_start = 0
char_end = 3
while true
  sequence = input[char_start..char_end]
  char_start += 1
  char_end += 1
  break if sequence.uniq.length == 4
end

puts char_end
