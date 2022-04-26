extends Node

var scoreMultiplier =[0.8,0.6,0.5]
var playerScore=0

func increaseScore(multiplier = 1):
	playerScore += 500 * multiplier
	print(playerScore)
#in your quiz scene click on your correct answer button. in the top right there should be a node button click on 
#it then double click pressed it should open a menu. click the button in the list. when you do so 
#it should open the script where you will need to add this script 
	#Global.increaseScore()
	#you can look at test quiz1 for example

