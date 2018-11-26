 # Here is my storage of calls and commands I need in my display file.
 #
 #     - Possibilities :
 #             . rock = Rock.new
 #             . paper = Paper.new
 #             . scissors = Scissors.new
 #     - Users choice : (human or computer)
 #             . User1 : 1) rock, 2) paper, 3)scissors
 #             . User2 : 1) rock, 2) paper, 3)scissors
 #     - Battle : loop
 #                   .. rock vs rock : rock == rock
 #                   .. rock vs paper : rock < paper
 #                   .. rock vs scissors : rock > scissors
 #
 #                   .. paper vs paper : paper == paper
 #                   .. paper vs scissors : paper < scissors
 #                   .. paper vs rock : paper > rock
 #
 #                   .. scissors vs scissors : scissors == scissors
 #                   .. scissors vs rock : scissors < rock
 #                   .. scissors vs paper : scissors > paper
 #     - Result :
 #             . Method which defining who WIN
 #             . Method which defining who LOOSE
 #     - Counter of points
 #             . when > you win
 #             . when < you loose
 #             . when == equal
 #     - Restarting the game or keep going?
 #     - Clear the screen to start again
