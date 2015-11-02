

file = File.open("sample.txt", "r")
contents = file.read
puts contents   #=> Lorem ipsum etc.

contents = file.read
puts contents   #=> ""

# block format
contents = File.open("sample.txt", "r"){ |file2| file2.read }
puts "block file read"
puts contents


# readlines
# readlines from sample2.txt
puts ""
puts "readlines"
File.open("sample2.txt").readlines.each do |line|
   puts "line = #{line}"
   # puts line
end

puts ""
puts "readline"
File.open("sample2.txt") do |file3|
   line = file3.readline
   puts "line = #{line}"
   line = file3.readline
   line = file3.readline
   line = file3.readline
   line = file3.readline
   line = file3.readline
   line = file3.readline
   line = file3.readline
   line = file3.readline
   line = file3.readline
   line = file3.readline
   # line = file3.readline
   # line = file3.readline
   # line = file3.readline

   # puts line
end

