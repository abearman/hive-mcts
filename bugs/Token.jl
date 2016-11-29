include("Player.jl")

####################################
#          Token class
####################################
abstract Token

function getNeighborPositions(token::Token)
  n = token.position[1]
  m = token.position[2]
  return [(n,m-1), (n-1,m), (n-1,m+1), (n,m+1), (n+1,m), (n+1,m-1)]
end

function getPlayer(token::Token)
  return token.player
end

####################################
#          Queen Bee class
####################################
type QueenBee <: Token
  position::Tuple{Int, Int}
  placed::Bool
  player::Player
end

function isSurrounded(bee::QueenBee)
  return false
end

####################################
#            Beetle class
####################################
type Beetle <: Token
  position::Tuple{Int, Int}
  placed::Bool
  player::Player
end

# A beetle is always free to move, even
# when it is walled in, as it can go up
# and over the wall.
function isFreeToMove(beetle::Beetle)
  return true;
end

####################################
#          Grasshopper class
####################################
type Grasshopper <: Token
  position::Tuple{Int, Int}
  placed::Bool
  player::Player
end

####################################
#            Spider class
####################################
type Spider <: Token
  position::Tuple{Int, Int}
  placed::Bool
  player::Player
end

####################################
#            Ant class
####################################
type Ant <: Token
  position::Tuple{Int, Int}
  placed::Bool
  player::Player
end
