extends Node

var scoreMultiplier =[1, 0.8,0.6,0.5, 0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5]
# Was crashing after 4 wrong and 1 correct answer because there is no
# muliptplier for getting 4 questions wrong...
# x1 for no incorrect.  x0.8 for 1 incorrect.  x0.6 for 2 incorrect
# x0.5 for 3 incorrect.  Nothing for 4 incorrect (Crash).
# Now the game will only crash after the user gets 30 questions wrong in a row,
# then gets the correct answer. The user shouldn't get this many wrong and as
# such shouldn't encounter the issue.

var playerScore=0
var topic = "Ssadsada"

var answered = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

func increaseScore(multiplier = 1):
	playerScore += 500 * multiplier
	print(playerScore)
#in your quiz scene click on your correct answer button. in the top right there should be a node button click on 
#it then double click pressed it should open a menu. click the button in the list. when you do so 
#it should open the script where you will need to add this script 
	#Global.increaseScore()
	#you can look at test quiz1 for example

