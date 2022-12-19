input = File.read('input.txt')

instructions = input.split("\n")
x = 1
cycle = 1
cur_index = 0
signals = []

while true
  if cycle == 20 || (cycle - 20) % 40 == 0
    # puts '=========='
    # puts "cycle: #{cycle}"
    # puts "x: #{x}"
    signals << (x * cycle)
  end

  instruction = instructions[cur_index]

  if instruction && instruction.start_with?('addx')
    cycle += 1

    if cycle == 20 || (cycle - 20) % 40 == 0
      # puts '=========='
      # puts "cycle: #{cycle}"
      # puts "x: #{x}"
      signals << (x * cycle)
    end

    x += instruction.split(' ').last.to_i
  end
  
  cycle += 1
  cur_index +=1

  break if cur_index == instructions.length
end

puts signals.sum
