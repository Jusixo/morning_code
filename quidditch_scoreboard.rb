SCORES = {
  "Quaffle goal"  => 10,
  "Caught Snitch" => 150,

  "Blatching foul"       => -30,
  "Blurting foul"        => -30,
  "Bumphing foul"        => -30,
  "Haverstacking foul"   => -30,
  "Quaffle-pocking foul" => -30,
  "Stooging foul"        => -30,
}

def quidditch_scoreboard(teams, actions)
  # Hash iteration in ruby will iterate keys in the order they were created
  # so we can take the names of the teams and turn them into a hash to maintain
  # order later.
  teams_and_scores = teams.split(" vs ").map { |team| [team, 0] }.to_h

  # Go through the actions extracting the team name and action
  actions.scan(/(.+?): ([^,]+)(?:, )?/).take_while do |team, action|
    # Increment the score for the given team and action
    teams_and_scores[team] += SCORES[action]

    # Game ends if we get a caught snitch, so keep going unless this was a game ender
    action != 'Caught Snitch'
  end

  # Format the output
  teams_and_scores.map { |team, score| [team, score].join(': ') }.join(', ')
end
