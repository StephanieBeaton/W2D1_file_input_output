
# Write a program that:

#    - Reads hamlet.txt from the given URL
#    - Saves it to a local file on your hard drive named "hamlet.txt"
#    - Re-opens that local version of hamlet.txt and prints out every 42nd line to the screen


require 'open-uri'
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
puts open(url).readline
#=> THE TRAGEDY OF HAMLET, PRINCE OF DENMARK


input_file = open(url)

output_file = File.open("hamlet.txt", "w")
while !input_file.eof?
  #    - Reads hamlet.txt from the given URL
  line = input_file.readline
  #    - Saves it to a local file on your hard drive named "hamlet.txt"
  output_file.write(line)
end

input_file.close
output_file.close

#    - Re-opens that local version of hamlet.txt and prints out every 42nd line to the screen

output_file = File.open("hamlet.txt", "r")

line_count = 1
while !output_file.eof?
  line = output_file.readline
  if line_count % 42 == 0
    puts line
  end
  line_count += 1
end
