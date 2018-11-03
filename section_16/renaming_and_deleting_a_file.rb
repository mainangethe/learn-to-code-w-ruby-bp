# renaming a file
# .rename method

# File.rename("myfile.txt", "renamedfilename.txt")

# .delete method
# takes 1 argument
# File.delete("renamedfilename.txt")

# .exist? method
#predicate method

File.delete("renamedfilename.txt") if File.exist?("renamedfilename.txt")
