
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

def list(song_array)

  song_array.each.with_index(1) do |song,index|
    puts "#{index}. #{song}"
  end
end

def play(song_array)
puts "Please enter a song name or number:"
selection = gets.chomp
selection_number = selection.to_i - 1



if song_array.include?(selection)
  puts "playing #{selection}"
elsif song_array[selection_number] && selection.to_i != 0
  puts "Playing #{song_array[selection_number]}"
else
  puts "Invalid input, please try again"
end   

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  help
 

  loop do
  puts "Please enter a command:"
  command = gets.chomp
    case command

    when "help"
      help
    when "list"
      list(songs)

    when "play"
      play(songs)
    when "exit" 
      exit_jukebox
      break
    end
  end
  end