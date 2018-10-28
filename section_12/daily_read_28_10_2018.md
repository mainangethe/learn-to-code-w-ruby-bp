# The Daily Read

**Author:** Ng'ethe Maina

**Date:** 28/10/2018


I all about hashes.
> how to create a hash

> methods used to retrieve values from a has

> how to update a hash



## 1. How to create a hash
A hash is another ruby object similar to an array. Biggest difference is one it
is not suited for ordered lists and works similar to a dictionary. There is a
Key and each key has to be unique (Keys function very similar to an index.)
Each key represents a value, a value is content, can be anything and can be duplicated.
To create a hash, we use the "{}" curly braces.
To create a key value pair, we use the "=>" rocket symbol
Best practice while creating keys is to create them as symbols ":name"
They are much lighter on usage.
Also from Ruby 1.9, there is a shorthand in creating hashes using symbols.



*Example*
```
    # Let's create a restaurant menu as a hash

    loft_kitchen_breakfast_menu = {
                        :chai => 20,
                        :chai_kubwa => 25,
                        :kahawa => 35,
                        :mandazi => 10
                        }
    # you can also create using strings as the keys
    loft_kitchen_lunch_menu =   {
                                "pilau" => 80,
                                "githeri" => 70,
                                "minji" => 120,
                                "ndengu" => 80
                                }

    # how to use the short hand format
    loft_kitchen_evening_menu = {
                                chai: 20,
                                chai_kubwa: 25,
                                mandazi: 10,
                                kahawa: 35,
                                chapati: 20
                                }

```

## 2. How to retrieve values in a Hash
There are plenty of ways to retrieve values from a hash.
The first one is to use the [] brackets while referencing the hash.
The second method is to use the fetch method. And with this one you can also include a return statement in case you don't find what you wanted to retrieve.
The third is iterating through the hash and retrieving everything or specific aspects of the hash. Methods available (.Each, .Each_Key, .Each_Value, .Keys, .Values)


*Example*
```
    # Let's create a restaurant menu and retrieve it's contents
    loft_kitchen_menu = {
                        chai: 20,
                        mandazi: 10,
                        pilau: 80
                        }
    # using the [] to retrieve a value
    loft_kitchen_menu[:chai] # 20

    # using the fetch method (if you enter a key that is non-existent, instead of
    # returning a nil

    loft_kitchen_menu.fetch(:pilau, "We don't sell that") # 80
    loft_kitchen_menu.fetch(:unga, "We don't sell that") # "We don't sell that"

    # using the each method
    loft_kitchen_menu.each { |key, value| puts "Item #{key}, Price #{value}"}
    # item chai, price 20
    # item mandazi, price 10

    # using the each_key method
    loft_kitchen_menu.each_key { |key| puts "Items - #{key}"}

    # using the each value method
    loft_kitchen_menu.each_value { |val| puts "Price - #{val}"}

    # using the keys method
    p loft_kitchen_menu.keys # [:chai, :mandazi, :pilau]

    #using the values method
    p loft_kitchen_menu.values # [20, 10, 80]

```

## 3. Updating a Hash
To update a hash pair, you use the assignment operator "="



*Example*
```
    # Let's create a menu as a hash and update it's value

    loft_kitchen_custom_menu =  {
                                ndengu_plain: 40,
                                ndengu_accompanied: 80
                                }
    loft_kitchen_custom_menu[:ndengu_plain] = 50
    p loft_kitchen_custom_menu[ :ndengu_plain ] # 50
    p loft_kitchen_custom_menu # {:ndengu_plain: 50, :ndengu_accompanied: 80}

```
