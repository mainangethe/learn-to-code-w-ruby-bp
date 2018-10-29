# merges two hashes

market =    {
            garlic: "3 cloves",
            tomatoes: "5 batches",
            milk: "10 gallons"
            }

kitchen =   {
            bread: "2 loaves",
            yoghurt: "20 cans",
            milk: "100 gallons"
            }

p market.merge(kitchen)
# in case of duplicate it keeps the pair from the hash that was passed as an argument
# merge doesn't mutate the hashes
# it has a bang "!" method
p kitchen
# challenge - custom merging method

def custom_merge(hash1, hash2)
    new_hash = hash1.dup
    hash2.each{ |key, value| new_hash[key] = value }
    new_hash
end #end of method

p custom_merge(market, kitchen)

p custom_merge(market, kitchen) == market.merge(kitchen)
