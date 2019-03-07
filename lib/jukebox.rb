require 'pry'
require 'readline'

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

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
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
  #binding.pry
end
#list(songs)

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp

  songs.each_with_index do |song, index|
    if user_input == song || user_input.to_i == (index+1)
      puts "Playing #{song}"
    else puts "Invalid input, please try again"
    end
  end
end
#play(songs)

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  prompt = puts "Please enter a command:"
  user_input = gets.chomp
  
  until user_input != "exit"
    puts prompt
    case user_input
    when "help"
      return help
    when "list"
      return list
    when "play"
      return play
    when "exit"
      return exit_jukebox
    end
  end
end