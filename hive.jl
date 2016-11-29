# Code inspiration from here:
# https://github.com/cmelchior/hivemind/blob/master/src/main/java/dk/ilios/hivemind/



####################################
#           Scripts
####################################
bee = QueenBee((3,4), false)
player = Player(black, 0, bee, [])
println(isBlack(player))
println(hasPlacedQueen(player))
