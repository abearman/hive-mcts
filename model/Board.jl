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

# Returns a list of all hexes with 1 or more Token
function getFilledHexes(board::Board)
  result = []
  for j = 1:size(board.hexes, 2) # rows
    for i = 1:size(board.hexes, 1) # columns
      hex = board.hexes[i,j]
      if (!hex.isEmpty())
        append!(result, hex)
      end
    end
  end
  return result
end

# Removes all tokens from the Board
function clear(board::Board)
  empty!(tokens)
end
