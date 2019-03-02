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

def list(arr)
arr.collect do|i|
puts "#{(arr.index(i)+1)}. #{i}"

end
end

def help
puts"
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def play(songs)

puts "Please enter a song name or number:"
user_choice = gets.chomp

  songs.select do |i|
  if i.include?(user_choice) == true || user_choice == (songs.index(i) + 1)
  puts "Playing #{i}"
  else
  puts "Invalid input, please try again"

  end
  end
  end
# end


def exit_jukebox
puts "Goodbye"
end

def run(songs)
puts "Please enter a command:"
  help

  choice = gets.chomp
    if choice == "help"
    help

    elsif choice == "list"
    list(songs)

    elsif choice == "play"
    list(songs)
    play(songs)

    elsif choice == "exit"
      exit_jukebox
    end

end
