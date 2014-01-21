#This line unpacks the first argument and assigns it the filename variable.
filename = ARGV.first

#This line assigns the string to the prompt variable.
prompt = "> "
#This line runs the File.open command on the file provided, saves the output to txt.
txt = File.open(filename)

#This line displays the file name passed as an argument
puts "Here's your file: #{filename}"

# Displays the content the file stored in txt.
puts txt.read


# Read a file, with the filename passed through STDIN.
#puts "I'll also ask you to type it again:"

#print the prompt variable
#print prompt

# Lets the user type in the file location; saves it to a variable.
#file_again = STDIN.gets.chomp()

# opens the file location; saves it to a variable.
#txt_again = File.open(file_again)

# reads the contents of the file stored in the txt_again variable.
#puts txt_again.read()
