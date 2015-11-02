

# Exercise: Copy Wikipedia's front page to a file using block notation

# Using the RestClient gem we learned about in the Methods URL-fetching chapter,
#  write a script that accesses http://en.wikipedia.org/
# and copies it to wiki-page.html on your hard drive.
# http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt.
#

# require "open-uri"

# remote_base_url = "http://en.wikipedia.org/"
# remote_page_name = "wiki/Main_Page"
# remote_full_url = remote_base_url + remote_page_name

# puts "remote_full_url = #{remote_full_url}"

# remote_data = open(remote_full_url).read

# puts "remote_data"


# open("wiki-page.html", "w") do |file|

#   puts "inside block"

#   puts "remote_data"
#   file.write(remote_data)
# end


require 'rubygems'
require 'rest-client'

wiki_url = "http://en.wikipedia.org/"
wiki_local_filename = "wiki-page.html"

File.open(wiki_local_filename, "w") do |file|
   file.write(RestClient.get(wiki_url))
end
