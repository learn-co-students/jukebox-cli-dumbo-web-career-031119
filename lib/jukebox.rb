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


# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts " I accept the following commands:
         - help : displays this help message
         - list : displays a list of songs you can play
         - play : lets you choose a song to play
         - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp

  songs.each_with_index do |song, index|
    if user_choice == song
      puts song
    elsif user_choice == (1 + index).to_s
      puts song
    else puts "Invalid input, please try again"
    end
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_choice = nil
  help()

  while user_choice != "exit"
    puts "Please enter a command:"
    user_choice = gets.chomp
    if user_choice == "list"
      list(songs)
    elsif user_choice == "play"
      play(songs)
    elsif user_choice == "help"
      help()
    elsif user_choice == "exit"
      exit_jukebox()
    end
  end
end
