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
