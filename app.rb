require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  
  <p>
  
      <a href=\"/rock\">Play Rock</a><br>
      <a href=\"/paper\">Play Paper</a><br>
      <a href=\"/scissors\">Play Scissors</a>

      </p>

      <h1>Welcome to Rock-Paper-Scissors!</h1>


<p>
  Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand.
</p>

<p>
  These shapes are:
</p>

<ul>
  <li>
    rock (a closed fist)
  </li>

  <li>
    paper (a flat hand)
  </li>

  <li>
    scissors (a fist with the index and middle fingers extended, forming a V)
  </li>

</ul>

<p>
  A player who decides to play rock will beat another player who has
  chosen scissors (rock crushes scissors or sometimes blunts
  scissors), but will lose to one who has played paper (paper covers
  rock); a play of paper will lose to a play of scissors (scissors
  cut[s] paper). If both players choose the same shape, the game is tied
  and is usually immediately replayed to break the tie.
</p>

<p>
  Originating from China and Japan, other names for the game in the
  English-speaking world include roshambo and other orderings of the three
  items, with rock sometimes being called stone.
</p>


  "
end

get("/rock")do
moves=["rock", "paper", "scissors"]
  comp_move = moves.sample

  if comp_move == "rock"
    outcome = "tied"
  elsif comp_move == "paper"
    outcome = "lost"
  else comp_move == "scissors"
    outcome = "won"
  end
"
<p>
  
      <a href=\"/rock\">Play Rock</a><br>
      <a href=\"/paper\">Play Paper</a><br>
      <a href=\"/scissors\">Play Scissors</a>

      </p>
<h2>
We played rock!
</h2>

<h2>
They played #{comp_move}!
</h2>

<h2>
We #{outcome}!
</h2>
<p>
      <a href=\"/\">Rules</a>
      </p>
"

end

get("/paper")do
moves=["rock", "paper", "scissors"]
  comp_move = moves.sample

  if comp_move == "paper"
    outcome = "tied"
  elsif comp_move == "scissors"
    outcome = "lost"
  else comp_move == "rock"
    outcome = "won"
  end
"
<p>
  
      <a href=\"/rock\">Play Rock</a><br>
      <a href=\"/paper\">Play Paper</a><br>
      <a href=\"/scissors\">Play Scissors</a>

      </p>
<h2>
We played paper!
</h2>

<h2>
They played #{comp_move}!
</h2>

<h2>
We #{outcome}!
</h2>
<p>
      <a href=\"/\">Rules</a>
      </p>
"

end

get("/scissors")do
moves=["rock", "paper", "scissors"]
  comp_move = moves.sample

  if comp_move == "scissors"
    outcome = "tied"
  elsif comp_move == "rock"
    outcome = "lost"
  else comp_move == "paper"
    outcome = "won"
  end
"
<p>
  
      <a href=\"/rock\">Play Rock</a><br>
      <a href=\"/paper\">Play Paper</a><br>
      <a href=\"/scissors\">Play Scissors</a>

      </p>
<h2>
We played scissors!
</h2>

<h2>
They played #{comp_move}!
</h2>

<h2>
We #{outcome}!
</h2>
<p>
      <a href=\"/\">Rules</a>
      </p>
"

end
