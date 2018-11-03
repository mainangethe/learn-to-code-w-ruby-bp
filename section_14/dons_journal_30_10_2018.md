# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 30/10/2018

**Entry No.** 17

I learnt several methods and more than procs
> Yielding to a Proc

> Methods with Proc Params

> Passing Ruby Methods as Procs

> Custom Each Method


## 1. Yielding to a Proc
When using the yield keyword in a method, the method expects a block. A proc is also a block, thus if you yield to a proc it will also work. To call a proc to a method, you use the "&" ampersand symbol.
You can also use the .call method to call a proc.



*Example*
```
    # Let's create a restaurant menu call and pass a proc with the menu items

    def leta_menu
        puts "Welcome to Loft Kitchen"
        puts "Here is our menu"
        yield if block_given?    
    end # end of method

    breako = Proc.new { puts "We have Tea, Mandazi, Chapati, Pilau and Nyoyo"}

    leta_menu(&breako) # should place the last statement from the proc

    breako.call # "We have Tea, Mandazi, Chapati, Pilau & Nyoyo"

```

## 2. Proc objects as a method argument
Since a proc is a valid object, we can use them as parameters for a method. We still use the & ampersand symbol to define it and call it.
Also you can also pass arguments to it



*Example*
```
    # Let's update our menu method to know accept a proc
    # We will also pass it the name of the restaurant

    def leta_menu(name, &menu_proc)
        puts "Hi Beloved Customer"
        menu_proc.call(name)
    end # end of method

    breako = Proc.new { |name| puts "Here at #{name}, We serve Tea, Mandazi, Chapati, Pilau and Nyoyo"}

    leta_menu("Loft Kitchen", &breako) # .."Here at Loft Kitchen, we.."



```

## 3. Passing Ruby Methods as Procs
When we need to compute the same method multiple times, then it is best to be saved as a proc. To invoke it as a Proc, we first need to give it a name. To do this we use the ":" colon symbol and its placed before the method name (similar to how to create a symbol :symbol_name) then we add the "&" ampersand symbol as the prefix.



*Example*
```
    # Let's create an array and iterate over it and show whether they are odd
    menu_prices = [10, 20, 25, 35, 70, 80, 120]
    p menu_prices.select { |number| number.odd? } # [25,35]

    # We can do the same by simply calling the odd method as a proc
    p menu_prices.select(&:odd?) # same result

```

## 4. Custom Each Method
With the knowledge we have learnt thus far. We are now able to recreate the each method. We just need to know iterate through an array and pass the value of each array as an argument to yield.

*Example*
```
    # Let's go through it on our own way
    # we first define our new each array that takes an array
    # and outputs the value of an array at each iteration
    # we then yield the value to a block
    def each_v2(array)
        i = 0
        until i >= array.length do
            yield(array[i]) if block_given?
            i += 1
        end # end of do block
    end # end of method


    # Let's create an array of menu items and
    # we will use our .each_v2 method to display the contents
    lk_menu = %w[Pilau Githeri Chai Mandazi Chapati Minji]
    each_v2(lk_menu) { |menu_item| puts "We serve #{menu_item}"}

```
