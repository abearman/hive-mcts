include("../model/Board.jl")

function print(board::Board)
  for hex in getFilledHexes(board)
    player = getPlayer(getTopToken(hex))
    #char fill = (player.getType() == Player.PlayerType.WHITE) ? '#' : '+';
    #asciiBoard.printHex(hex.getTopToken().getId(), getPlayerTitle(player), fill, hex.getQ() - adjustQ, hex.getR() - adjustR);
  end
end

function printHex()
  println("   _ _")
  println(" /     \\ ")
  println("/       \\ ")
  println("\\       /")
  println(" \\ _ _ /")
end


printHex()
