win_scores = {
  'A' => 2, # rock => paper
  'B' => 3, # paper => scissors
  'C' => 1  # scissors => rock
}
lose_scores = {
  'A' => 3, # rock => paper
  'B' => 1, # paper => rock
  'C' => 2  # scissors => paper
}
draw_scores = {
  'A' => 1, # rock => rock
  'B' => 2, # paper => paper
  'C' => 3  # scissors => scissors
}

input = File.open('input.txt').read
results = input.split("\n").map do |round|
  move1, move2 = round.split(' ')
  case move2
  when 'Z' # win
    win_scores[move1] + 6
  when 'Y' # draw
    draw_scores[move1] + 3
  else # lose
    lose_scores[move1]
  end
end

puts results.sum
