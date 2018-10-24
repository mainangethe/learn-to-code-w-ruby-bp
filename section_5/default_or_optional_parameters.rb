def make_phone_call(number, international_code = 254, area_code = 20)
    #always add the optional params at the end
    puts "Calling +#{international_code}-#{area_code}-#{number}"
end

make_phone_call(816441) #without international / area code

make_phone_call(816441,230,780) #with everything

make_phone_call(816440,22) #without area code
