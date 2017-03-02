class Quiz

def display_greeting

  Console_Screen.clears   #clear the display area

  #display welcome message
  puts "\t\t Welcome to the Football Trivia Quiz!" +
  "\n\n\n\n\n\n\n\n\n\nPress Enter " +
  "continue."

  Console_Screen.pause    #pause the game

end
#method to display quiz instructions
def display_instructions

  Console_Screen.clears
  puts "INSTRUCTIONS:\n\n" #display a heading

  #Display the game's instructions
  puts "You will be given a number of multiple choice"
  puts "questions. To answer a question, type in the letter of your choice"
  puts "and press the Enter key to proceed."
  puts "Your Football grade will be given at the end of the quiz.\n\n\n"
  puts "Good luck!\n\n\n\n\n\n\n\n\n"
  print "Press Enter to proceed"

  Console_Screen.pause

end

#method defined to present and process quiz questions
def show_q(question, q_A, q_B, q_C, q_D, answer)

  #Loop until the player gives a valid answer

  loop do
    Console_Screen.clears

    #Format the display of the quiz question
    puts question + "\n\n"
    puts q_A
    puts q_B
    puts q_C
    puts q_D
    print "\nType in the letter that represents your answer: "

    reply = STDIN.gets #collects the player's answer
    reply.chop!        #removes the end of the line marker

    #Analyse the player's answer to see if it is correct
    if answer == reply then

      #Keep track of the number of the questions that have been answered correctly
      $noCorrect += 1

    end

    #Anaylse the question to check that it is valid
    if reply == "a" or reply == "b" or reply == "c" or reply == "d" then

      break #stops the loop

    end

  end

  #method to grade and display quiz rankings/results
  def determine_grade
  Console_Screen.clears

  #in order to pass the quiz the player must answer correctly 6 questions
  if $noCorrect >= 6 then

    #tell the player the grade they scored
    print "You scored " + $noCorrect.to_s + " out of 10 question(s). "
    puts "You have passed the Football Trivia Quiz!\n\n"
    puts "You have earned a grade of: Football Brain"      if $noCorrect == 6
    puts "You have earned a grade of: Footballing Genius!" if $noCorrect == 7
    puts "You have earned a grade of: Football Brainiac!"  if $noCorrect == 8
    puts "You have earned a grade of: Statto!"             if $noCorrect == 9
    puts "You have earned a grade of: Future Manager in the making!" if $noCorrect == 10
    print"\n\nPress Enter to proceed."

  else $noCorrect <= 5 #the player failed the quiz

    #tell the player of the low grade they scored
    print "You scored " + $noCorrect.to_s + " out of 10 questions. "
    puts "You have failed the Football Trivia Quiz!\n\n"
    puts "Perhaps you should brush up on your Football knowledge"
    puts "before you retake the quiz"
    print"\n\nPress Enter to continue."

  end

  Console_Screen.pause       #Pause the game

  end

  #method to display info the Football Trivia Quiz

  def display_credits

    Console_Screen.clears

    #thanks the player for playing and display game info
    puts "\t\tThank you for participating in the FOOTBALL TRIVIA QUIZ.\n\n\n\n"
    puts "\n\t\t\t Developed by Karanpal Singh Chaggar.\n\n"
    puts "\t\t\t\t Copyright 2017\n\n"
    end
  end
end
