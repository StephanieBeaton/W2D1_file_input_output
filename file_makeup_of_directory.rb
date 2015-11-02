# Exercise: Determine file makeup of directories, print to spreadsheet

# Read the same directory and subdirectories as in the last exercise and determine:

#   - A breakdown of file types (normalize the file extensions) by number of files
#   - A breakdown of file types by bytes of disk space used.
#
# Print the results of this analysis in a single text file,
#  in the following spreadsheet-friendly tab-delimited format:
#

# Filetype   Count   Bytes
# TXT   34   102300
# JPG   8   20050010
# GIF   5   428400

DIRNAME = "../w1d3_debug/d58e00de2e75f2ba4dc4"
# Dir.glob("#{DIRNAME}/**/*.*").sort_by{|fname| File.size(fname)}.reverse[0..9].each do |fname|
#    puts "#{fname}\t#{File.size(fname)}"
# end


file_type_count_size = {}


Dir.glob("#{DIRNAME}/**/*.*").each do |filename|

  filetype = filename[-3..-1]
  filetype = filename.match(/\.[a-zA-Z]+$/).to_s
  filetype = filetype.slice!(1, filetype.length - 1).upcase

  filesize = File.size(filename)

  if file_type_count_size[filetype.to_sym].nil?

     file_type_count_size[filetype.to_sym] = {}
     file_type_count_size[filetype.to_sym][:filesize] = filesize
     file_type_count_size[filetype.to_sym][:count] = 1

  else
     file_type_count_size[filetype.to_sym][:filesize] += filesize
     file_type_count_size[filetype.to_sym][:count] += 1
  end

end

puts file_type_count_size.inspect

# output results

output_file = File.open("file_makeup_of_directory.txt", "w")

output_file.puts "Filetype\tCount\tBytes"

file_type_count_size.each do |key, value|
  #puts "key = #{key}"
  #puts "value = #{value}"
  output_file.puts "#{key}\t#{value[:filesize]}\t#{value[:count]}"

end

output_file.close


