# Reading a file
# We use the File class

# .open will parse the content as an array
File.open("novel.txt").each do |file_line|
    puts file_line
end # end of block
