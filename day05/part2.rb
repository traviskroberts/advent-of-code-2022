input = File.read('input.txt')

layout, instructions = input.split("\n\n")
rows = layout.split("\n")
indices = {}
rows.pop.split(' ').map.with_index { |_row, i| indices[i] = [] }
rows.each do |row|
  row.chars.each_slice(4).with_index do |item, i|
    box = item.join('').strip
    next if box == ''
    indices[i] << item.join('').strip
  end
end

instructions.split("\n").each do |instruction|
  command = instruction.match(/move (?<num>\d+) from (?<from>\d+) to (?<to>\d+)/)
  num = command['num'].to_i
  from = command['from'].to_i
  to = command['to'].to_i

  arr_from = indices[from - 1]
  arr_to = indices[to - 1]
  boxes = arr_from.shift(num)
  arr_to.unshift(boxes)
  arr_to.flatten!
end
puts indices.map { |_, arr| arr.shift.gsub(/\W+/, '') }.join('')
