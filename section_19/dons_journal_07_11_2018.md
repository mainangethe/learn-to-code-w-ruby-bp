# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 06/11/2018

**Entry No.** 26

I learnt about impact when using certain keywords when calling mixins and how to extend another default Ruby module.

> The Prepend Keyword

> The Extend Keyword

> The Enumerable Module



## 1. The Prepend Keyword
By default, when Ruby is doing a method lookup path, it will always give precedence to the immediate instance if it finds it.
For example if there is a .bill method in a module and in a class with the module, it will use the class' method instead of the module's.
When you call the module using the "prepend" keyword, this reverses the above and considers the module as first priority when doing the lookup.

*Example*
```
    # Let's create a module called BillCalculations and a class restaurant with it's own bill class

    module BillCalculations

        def bill(items)
            items.reduce(0) { |num, sum| sum + num }
        end

    end

    class Restaurant
        prepend BillCalculations

        def bill(items)
            items.reduce(1) { |num, sum| sum * num }
        end # Very classy restraurant
    end # end of method

    # we can now test them

    table_2 = [80, 20, 120, 40]
    loft_kitchen = Restaurant.new

    # when we use "include BillCalculations"
    p bill = loft_kitchen.bill(table_2) # 7680000
    puts

    # when we use "prepend BillCalculations"
    p tax = loft_kitchen.bill(table_2) # 260

```


## 2. The Extend Keyword
The extend keyword is used to make the module load as part of the class methods in contrast to include/prepend which make it part of the instance methods.
A class method is only available to the Class, an object cannot use them.

*Example*
```
    # Let's create a module called BillCalculations and a class restaurant with it's own bill class

    module BillCalculations

        def bill(items)
            items.reduce(0) { |num, sum| sum + num }
        end

    end

    class Restaurant
        extend BillCalculations
    end # end of method

    # we can now test them

    table_2 = [80, 20, 120, 40]
    loft_kitchen = Restaurant.new

    # when we use "extend BillCalculations"
    p bill = loft_kitchen.bill(table_2) # ERROR
    puts

    p Restaurant.bill(table_2) # 260

```


## 3. The Enumerable Module
Ruby also shares it's loop methods that allows you to iterate over objects for specific functions.
When using the Enumerable module, one has to define the each method so that Ruby can know what it kind of object it is iterating over

*Example*
```
    # Let's create our own class and use the enumerable module methods

    class RestaurantMenu
        include Enumerable

        def initialize
            @menu = []
        end # end of initialize method

        attr_reader :menu

        def add_menu_item(new_item)
            menu << new_item
        end # end of add menu item method

        def each
            menu.each { |menu_item| yield menu_item }
        end # end of each method
    end # end of class

    loft_menu = RestaurantMenu.new
    loft_menu.add_menu_item("Nyoyo")
    loft_menu.add_menu_item("Chai")
    loft_menu.add_menu_item("Ndunya")
    loft_menu.add_menu_item("Madondo")
    loft_menu.add_menu_item("Pilau")
    loft_menu.add_menu_item("Chapo")

    loft_menu.each { |item| puts "Did you know we serve #{item}"}
    p loft_menu.sort
    p loft_menu.any? { |item| item.length > 3 } # true

```
