require './screen.rb'
require './quiz.rb'

#initialize a global variable to keep track of the number
#of questions answered correctly
$noCorrect = 0

Console_Screen = Screen.new #instantiate a new Screen object
SQ = Quiz.new    #instantiate a new Quiz object

#display the Quiz's class's display_greeting method
SQ.display_greeting

answer = ""

#loop that runs until the player enter yes or no and don't accept any other input.
loop do

  Console_Screen.clears

  #asks the player for permission to play the quiz
  print "Would you like to play this quiz? (yes/no): "

  answer = STDIN.gets #collects the player's response
  answer.chop! #remove any extra characters added to the string

  break if answer == "yes" || answer == "no"

end

#Anaylse the player's answer
if answer == "no" #if the player doesn't want to play the quiz

  Console_Screen.clears

  #invite the player to return and play the quiz at a later date
  puts "That's a shame, hopefully you'll give it a go another time.\n\n"

else #if the player wants to play the quiz

  #display the instructions method from the Quiz's class
  SQ.display_instructions

  #display the show_q method and pass it
  #arguments representing a question, possible answers and the letter
  #of the correct answer
  SQ.show_q("Who is the leading top Premier League scorer of all time?",
  "a. Wayne Rooney", "b. Thierry Henry", "c. Robbie Fowler", "d. Alan Shearer",
  "d")

  SQ.show_q("Who is the most expensive footballer?",
  "a. Gareth Bale", "b. Paul Pogba", "c. Cristiano Ronaldo", "d. Gonzalo Higuain",
  "b")

  SQ.show_q("Which team has won the most Champions Leagues?",
  "a. FC Barcelona", "b. Liverpool FC", "c. AC Milan", "d. Real Madrid",
  "d")

  SQ.show_q("Which player scored the fastest FA Cup final goal?",
  "a. Louis Saha", "b. Didier Drogba", "c. Roberto Di Matteo", "d. Michael Owen",
  "a")

  SQ.show_q("Who has earned the most international caps for England?",
  "a. Steven Gerrard", "b. Wayne Rooney", "c. David Beckham", "d. Peter Shilton",
  "d")

  SQ.show_q("Which team has won the most World Cups?",
  "a. Argentina", "b. Brazil", "c. Spain", "d. Germany",
  "b")

  SQ.show_q("Which player has won the most Ballon d’Or Awards?",
  "a. Cristiano Ronaldo", "b. Ronaldinho ", "c. Lionel Messi", "d. Kaka",
  "c")

  SQ.show_q("Which team won the 2006 World Cup?",
  "a. Brazil", "b. France", "c. Italy", "d. Portugal",
  "c")

  SQ.show_q("Which Goalkeeper has kept the most clean sheets in the Premier League?",
  "a. David James", "b. Petr Cech", "c. Mark Schwarzer", "d. Pepe Reina",
  "b")

  SQ.show_q("Which team won the Premier League in the 2002/2003 season?",
  "a. Arsenal FC", "b. Manchester United FC", "c. Chelsea FC", "d. Leeds United FC",
  "b")

  #call the Quiz class's determine grade method to display the player's grade
  SQ.determine_grade

  #call the Quiz's class's display credits method to thank the player for taking
  #part in the quiz
  SQ.display_credits

end
















#Class representing the console window

#Create a class to represent the quiz

#method to diplay a greeting to the player before the quiz begins

#have a method to display game's instructions

#method to present and process questions for the quiz

#method to grade and display quiz rankings/results

#define a method to display credits

#initialize an instance of the Screen & Quit classes - define a global variable

# yes/no option to get the player to decide if they want to do the quiz. Use an if statement to determine this

#if player selects no then display a farewell message which terminates the program.

#if player selects yes then
