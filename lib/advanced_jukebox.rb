#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'Users/daniellealba/Desktop/labs_/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'Users/daniellealba/Desktop/labs_/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'Users/daniellealba/Desktop/labs_/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'Users/daniellealba/Desktop/labs_/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/04.mp3',
"Wolf" => 'Users/daniellealba/Desktop/labs_/jukebox-cli-dumbo-web-career-031119/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'Users/daniellealba/Desktop/labs_/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'Users/daniellealba/Desktop/labs_/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/07.mp3'
}


def help
puts"
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end




def list(my_songs)


  puts my_songs.keys
    #this method is different! Collect the keys of the my_songs hash and
    #list the songs by name

end


def play(my_songs)
puts "Please enter a song name"
user_choice = gets.chomp
  my_songs.select do |i, e|
    if user_choice != i
   "Invalid input, please try again"

    elsif user_choice == i
    open e
  end

  end
end

def exit_jukebox
puts "Goodbye"
end

def run(my_songs)
puts "Please enter a command:"
  help

  choice = gets.chomp
    if choice == "help"
    help

    elsif choice == "list"
    list(my_songs)

    elsif choice == "play"
    list(my_songs)
    play(my_songs)

    elsif choice == "exit"
      exit_jukebox
    end

end
