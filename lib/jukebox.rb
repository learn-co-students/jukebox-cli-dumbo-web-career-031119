
require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end




def list(songs)
  songs.each_with_index do |v,i|
     puts "#{i+1}. #{v}"
  end
end

def play(songs)
  response = ""

  puts "Please enter a song name or number:"
  user_request = gets.chomp

  number_track = ""
  songs.each_with_index do |v,i|

    number_track = i + 1


    if user_request.to_i == number_track || user_request == v
      puts "Playing" + v
    else
    puts"Invalid input, please try again"
    end
  end

end



def exit_jukebox
  puts "Goodbye"
end


def run(songs)
 help

 command = ""
  while command != "exit"
    puts "Please enter a command:"
   command = gets.chomp
   if command == "list"
     list(songs)
   elsif command == "play"
       play(songs)
     elsif command == "help"
      help
       end
     end
     exit_jukebox
   end
