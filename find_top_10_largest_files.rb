

# Exercise: Find the top 10 largest files

# Using the Dir.glob and File.size methods,
# write a script that targets a directory –
# and all of its subdirectories –
# and prints out the names of the 10 files that take up the most disk space.

# Point your script to any subdirectory.
# You will obviously get different results than I do.

# Hint: This exercise does not require a call to File.open


max_file_sizes = []

top_n_files = 3

Dir.glob('../w1d3_debug/d58e00de2e75f2ba4dc4/**/*').each do |filename|
  filesize =  File.size?(filename)
  if max_file_sizes.length < top_n_files
    max_file_sizes << filesize
    max_file_sizes.sort!.reverse!
  elsif max_file_sizes[top_n_files - 1] < filesize
    max_file_sizes << filesize
    max_file_sizes.sort!.reverse!
    max_file_sizes.pop
  end
end

puts "max_file_sizes #{max_file_sizes}"

max_file_names = []

Dir.glob('../w1d3_debug/d58e00de2e75f2ba4dc4/**/*').each do |filename|
  filesize =  File.size?(filename)
  if max_file_sizes.include?(filesize)
    max_file_names << filename
  end
end

puts "max_file_names #{max_file_names}"




