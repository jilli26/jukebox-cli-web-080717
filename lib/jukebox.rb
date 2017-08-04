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


#def say_hello(name)
#  "Hi #{name}!"
#end
#
#puts "Enter your name:"
#users_name = gets.chomp
#
#puts say_hello(users_name)


#The Help Method
def help
puts " I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


#The List Method
def list(songs)
  songs.each_with_index do |index, song|
    puts "#{index}. #{song}"
  end
end


#The Exit_Jukebox Method
def exit_jukebox
  puts "Goodbye"
end

#The Play Method
def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  #if user's response is a valid song number
  songs.each_with_index do |song, index|
    if input.to_i - 1 == index
      puts "Playing #{song}"
    elsif input == song
      puts "Playing #{song}"
    else puts "Invalid input, please try again"
    end
  end
end


#The Run Method
def run(songs)
  #call the help method
  help
  #We need to keep our program running as long as the user's input is not "exit"
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      break
    end
  end
end
