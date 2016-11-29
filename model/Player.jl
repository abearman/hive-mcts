####################################
#          Player class
####################################

include("Token.jl")

@enum PLAYER_TYPE black=1 white=2

type Player
  playerType::PLAYER_TYPE
  numMoves::Int64
  queen::QueenBee
  tokens::Array{Token}
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
