#@enum SPECIES bee=1 beetle=2 grasshopper=3 spider=4 ant=5
# Code inspiration from here:
# https://github.com/cmelchior/hivemind/blob/master/src/main/java/dk/ilios/hivemind/

####################################
#          Token class
####################################
abstract Token

function getNeighborPositions(token::Token)
  n = token.position[1]
  m = token.position[2]
  return [(n,m-1), (n-1,m), (n-1,m+1), (n,m+1), (n+1,m), (n+1,m-1)]
end

####################################
#          Queen Bee class
####################################
type QueenBee <: Token
  position::Tuple{Int, Int}
  placed::Bool
end

function isSurrounded(bee::QueenBee)
  return false
end

####################################
#            Beetle class
####################################
type Beetle <: Token
  position::Tuple{Int, Int}
end

####################################
#          Grasshopper class
####################################
type Grasshopper <: Token
  position::Tuple{Int, Int}
end

####################################
#            Spider class
####################################
type Spider <: Token
  position::Tuple{Int, Int}
end

####################################
#            Ant class
####################################
type Ant <: Token
  position::Tuple{Int, Int}
end


####################################
#              Hive class
####################################
type Hive

end

####################################
#          Player class
####################################
@enum PLAYER_TYPE black=1 white=2

type Player
  playerType::PLAYER_TYPE
  numMoves::Int64
  queen::QueenBee
end

function isBlack(player::Player)
  return (player.playerType == black)
end

function isWhite(player::Player)
  return (player.playerType == white)
end

function hasPlacedQueen(player::Player)
  return player.queen.placed
end


####################################
#           Scripts
####################################
bee = QueenBee((3,4), false)
player = Player(black, 0, bee)
println(isBlack(player))
println(hasPlacedQueen(player))
