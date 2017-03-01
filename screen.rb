class Screen
#class that represents the computer screen 

  def clears
    puts ("\n" * 25) #scroll down the screen 25 times
    puts "\a"        #makes a noise to get the player's attention

  end

  def pause         #define a method to pause the game
    STDIN.gets      #execute the STDIN class's gets method to pause script
                    #waits for player to press the enter key to proceed
  end


end
