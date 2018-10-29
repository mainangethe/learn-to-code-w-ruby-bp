# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 29/10/2018


I learnt several methods and uses of hashes
> Creating a new Hash with a default value

> How to convert a Hash to an Array and back

> How to sort a Hash

> The .key? and .value? methods

> The .delete method

> the .select and .reject methods

> the .merge method

> Using Hashes as method arguments



## 1. Creating Hashes with a default value
In our previous entry, we used the curly braces to create a hash. If you search for a non-existent key by default, you will get a nil. If you want the same search to return a different result you need to change the default value. To achieve this, there are two methods. Using the Hash class and using the .default method
A key point to remember is .default method arguments are passed using the assignment "=" operator and not in parenthesis.



*Example*
```
    # Let's create a restaurant menu as a hash with a default value of 0

    loft_kitchen_menu = {} # default = nil
    p loft_kitchen_menu[:chai] # returns a nil

    loft_kitchen_menu_from_class = Hash.new(0) # default return is now 0
    p loft_kitchen_menu_from_class[:mandazi] = 0

    loft_kitchen_menu.default = 0 # default now changed to 0
    p loft_kitchen_menu[:chai]# now returns a 0

```

## 2. How to convert a Hash to an Array
To convert a Hash to an array, you need to use the ".to_a" method.
It will return a multi-dimensional array with each key-value pair as a nested array. Once an array you can use any other available array method (example flatten method to remove the nested arrays)
To do the inverse (Turn an array into a Hash) you use the ".to_h" method


*Example*
```
    # Let's convert a Hash to an Array
    loft_kitchen_menu_hash = {
                        chai: 20,
                        mandazi: 10,
                        pilau: 80
                        }
    loft_kitchen_menu_array = loft_kitchen_menu_hash.to_a
    p loft_kitchen_menu_array #[[:chai,20], [:mandazi,10], [:pilau,80]]

    # Let's convert an array to a Hash
    loft_kitchen_inventory = [[:teabags, 1], [:rice, 9], [:flour,2]]
    loft_kitchen_inventory_hash = loft_kitchen_inventory.to_h
    p loft_kitchen_inventory_hash
    # {:teabags => 1, :rice => 9, :flour => 2 }


```

## 3. Sorting a Hash
Hashes are not supposed to be sorted. They are meant for relationships not listing.
However, for any reason you'd want to sort a hash, you would need to use the .sort and .sort_by methods.
They return a multi-dimensional array with the contents sorted.
The .sort method only sorts a hash based on the keys entered.
To sort a hash based on the values, you need to use the .sort_by method, and it requires a block of code for it to work.



*Example*
```
    # Let's sort a hash using the .sort method

    loft_kitchen_menu =     {
                            ndengu_plain: 40,
                            ndengu_accompanied: 80
                            }
    loft_kitchen_sorted_menu = loft_kitchen_menu.sort
    p loft_kitchen_sorted_menu # [[:ndengu_accompanied,80], [:ndengu_plain, 40]]
    p loft_kitchen_sorted_menu.class # Array

    # Let's sort a hash based on it's values
    loft_kitchen_breakfast_menu =   {
                                    chai: 20,
                                    chai_kubwa: 25,
                                    kahawa: 35,
                                    mandazi: 10,
                                    chapati: 20
                                    }
    loft_kitchen_sorted_breakfast_menu = loft_kitchen_breakfast_menu.sort_by  { |item, price| price}
    p loft_kitchen_sorted_breakfast_menu
    # [[:mandazi, 10], [:chai, 20], [:chapati, 20], [:chai_kubwa, 25], [:kahawa, 35]]

```

## 4. Searching for a Hash Key or Hash Value
These .key? and .value? methods are predicate methods (always return a true / false) that evaluate whether a hash contains a particular key or value.


*Example*
```
    # Let's search for keys with the .key? method

    loft_kitchen_menu =     {
                            ndengu_plain: 40,
                            ndengu_accompanied: 80
                            }
    p loft_kitchen_menu.key?(:ndengu_plain) # true
    p loft_kitchen_menu.key?(:mandazi) # false

    # Let's now search for values with the .value? method
    p loft_kitchen_menu.value?(80) # true
    p loft_kitchen_menu.value?(100) # false

```

## 5. Removing Key-Value Pairs from a Hash
To remove a key-value pair from a hash we use the .delete method.
The delete method takes the key as it's argument.
After deleting, the method returns the "value" ONLY. If you would want to save it.
**Note:** It can only take 1 argument at a time.


*Example*
```
    # Let's delete a key value pair

    loft_kitchen_menu =     {
                            madondo: 80,
                            nyanya: 10,
                            chai: 20
                            }
    p loft_kitchen_menu # {:madondo=>80, :nyanya=>10, :chai=>20}
    p loft_kitchen_menu.delete(:nyanya) # 10
    p loft_kitchen_menu # { madondo => 80, chai => 20}

```

## 6. Selecting Key-Value Pairs from a Hash
You are able to filter and select specific key-value pairs from a hash using the .select and .reject methods.
They each take a block of code that evaluates a logical condition (must return a true / false).
The select method picks those key-value pairs that meet the condition.
The reject method ignores the key-value pairs that meet the condition.


*Example*
```
    # Let's select specific key-value pairs

    loft_kitchen_menu =     {
                            madondo: 80,
                            mandazi: 10,
                            chapati: 20,
                            pilau: 80,
                            githeri: 70,
                            chai: 20
                            }
    loft_kitchen_menu_50_or_less = loft_kitchen_menu.select { |item, price| price <= 50 }
    p loft_kitchen_menu_50_or_less # {:mandazi => 10, :chapati => 20, :chai => 20}

    # let us use the reject method to select pairs

    loft_kitchen_menu_50_plus = loft_kitchen_menu.reject { |item, price| price <= 50 }
    p loft_kitchen_menu_50_plus # {:madondo => 80, :pilau => 80, :githeri => 70}

```

## 7. Merging Multiple Hashes
You can join multiple hashes using the .merge method.
You will pass it to one hash, and add the second merge as an argument.
**NOTE:** If there are common keys in both, it will use the one from the second merge(passed as an argument)


*Example*
```
    # Let's merge two hashes

    loft_kitchen_breakfast_menu =   {
                                    mandazi: 10,
                                    chapati: 20,
                                    chai: 20
                                    }
    loft_kitchen_lunch_menu =   {
                                githeri: 70,
                                pilau: 80,
                                minji: 120,
                                }
    loft_kitchen_menu = loft_kitchen_breakfast_menu.merge(loft_kitchen_lunch_menu)
    p loft_kitchen_menu # {:mandazi => 10, :chapati => 20, .. :minji => 120}

```


## 8. Using Hashes as arguments in methods
One of the biggest challenges in methods is not remembering the format of how to enter multiple arguments especially on those methods where interchanging the arguments provide a different result.
If you pass a harsh, they keys will always be the same thus won't matter how the hash pairs are organized.


*Example*
```
    # Let's create a method that will bring a wrong result if arguments are entered differently.

    def my_bill(price, tip, tax)
        tax_amount = price * tax
        tip_amount = price * tip
        total = price + tax_amount + tip_amount
        total
    end # end of method

    # example 1 (Price - 1000, Tip - 0.02, Tax - 0.16)
    p my_bill(1000, 0.02, 0.16) # 1,180.0

    # look at what happens if we change the arguments
    p my_bill(0.02, 1000, 0.16) # 20.023

    # Let's now recreate the method to use a hash
    def anti_fail_bill_calculator(bill)
        tax_amount = bill[:price] * bill[:tax]
        tip_amount = bill[:price] * bill[:tip]
        total = bill[:price] + tax_amount + tip_amount
        total
    end # end of method

    # example 3 using hashes
    customer_bill_1 = {price: 500, tip: 0.02, tax: 0.16}
    customer_bill_2 = {tip: 0.02, price: 500,  tax: 0.16}
    p anti_fail_bill_calculator(customer_bill_1) #590.0
    p anti_fail_bill_calculator(customer_bill_2) #590.0

```
