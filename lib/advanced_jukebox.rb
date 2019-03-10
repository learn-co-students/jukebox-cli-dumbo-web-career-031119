require "pry"
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/JerryV/Development/code/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/JerryV/Development/code/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/JerryV/Development/code/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/JerryV/Development/code/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/JerryV/Development/code/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/JerryV/Development/code/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/JerryV/Development/code/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.each do |song, dir|
    puts song
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
    input = gets.chomp
    my_songs.each { |song, location|
      if input == song
        system "open #{location}"
      end
        }
    if input == "list"
      list(my_songs)
      play(my_songs)
    else
      puts "Invalid input, please try again:"
      play(my_songs)
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.downcase.chomp

    case input
      when "list"
        list(songs)
      when "help"
        help
      when "play"
        list(songs)
        play(songs)
      when "exit"
        exit_jukebox
      else
        help
    end
  end
end
