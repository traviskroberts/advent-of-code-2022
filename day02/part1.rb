scores = {
  'X' => 1, # rock
  'Y' => 2, # paper
  'Z' => 3  # scissors
}

input = File.open('input.txt').read
results = input.split("\n").map do |round|
  move1, move2 = round.split(' ')
  case round
  when 'A Y', 'B Z', 'C X' # win
    scores[move2] + 6
  when 'A X', 'B Y', 'C Z' # draw
    scores[move2] + 3
  else # lose
    scores[move2]
  end
end

puts results.sum
