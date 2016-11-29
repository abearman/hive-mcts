####################################
#             Hex class
####################################

include("Token.jl")

type Hex
  n::Int64              # Row
  m::Int64              # Column
  tokens::Array{Token}  # Can be multiple tokens stacked
end

function isEmpty(hex::Hex)
  return isempty(tokens)
end

# Adds a new token to the stack
function addToken(hex::Hex, token::Token)
  append!(tokens, token)
end

# Removes the top (last) token from the stack
function removeToken(hex::Hex)
  if (!isempty(tokens))
    pop!(tokens)
  end
end

# Returns the top (first) token from the stack
function getTopToken(hex::Hex)
  if (!isempty(tokens))
    return first(tokens)
  end
  return null
end

function getTokenAtHeight(hex::Hex, height::Int64)
  if (length(tokens) < height)
    return null
  else
    return tokens[height]
  end
end

function getHeight(hex::Hex)
  return length(tokens)
end
