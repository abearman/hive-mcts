####################################
#              Board class
####################################

include("Token.jl")
include("Hex.jl")

type Board
  tokens::Array{Token}
  hexes::Array{Array{Hex}}  # 2D grid of Hexes
end

function addToken(board::Board, token::Token)
  append!(board.tokens, token)
end

# Removes all tokens from the Board
function clear(board::Board)
  empty!(tokens)
end
