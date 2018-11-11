# Ruby combines all of it's class definitions into one before it processes 

class Book
    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end
end

goosebumps = Book.new("Night of the Living Dummy", "R.L. Stine", 100)
p goosebumps
puts

class Book
    def read
        1.step(@pages,10) { |page| puts "Reading page #{page}..."}
        p "Done! #{@title} was a great book!"
    end
end

animal_farm = Book.new("Animal Farm", "George Orwell", 50)

animal_farm.read
puts

goosebumps.read
