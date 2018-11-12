# Singleton method
# method that exists on one single instance that we initiate from a class
# We define it once an object has been created
class Player
    def play_game
        rand(1..100) > 50 ? "Winner!" : "Loser!"
    end
end

ngethe = Player.new
nguhi = Player.new

def ngethe.play_game
    "Winner"
end
p ngethe.play_game
p nguhi.play_game
puts

p ngethe.singleton_methods
p nguhi.singleton_methods
puts

p ngethe.singleton_class
#anonymous class - without a name
