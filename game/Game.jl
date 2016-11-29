####################################
#          Game class
####################################

include("../model/Player.jl")
include("../model/Token.jl")
include("../model/Board.jl")

type Game
  # Players
  whitePlayer::Player
  blackPlayer::Player

  activePlayer::Player
  board::Board

  isRunning::Bool
end

function start(game::Game)
  if (game.isRunning)
    return
  end

  clear(board)
  activePlayer = whitePlayer

  isRunning = true
end

function isEndOfGame(game::Game)
  whiteQueenSurrounded = isSurrounded(whitePlayer.queen)
  blackQueenSurrounded = isSurrounded(blackPlayer.queen)

  # End game conditions
  if (whiteQueenSurrounded && blackQueenSurrounded)
    println("Game ended in a draw!")
  elseif (whiteQueenSurrounded)
    println("Black player won.")
  elseif (blackQueenSurrounded)
    println("White player won.")
  end

  # Continue game
  return false
end
