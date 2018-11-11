# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 06/11/2018

**Entry No.** 24

I learnt more about classes

> The Self Keyword

> Getter Methods

> Setter Methods

> Shortcut Accessor Methods

> Initializing with Parameters


## 1. The Self Keyword in Instance Methods
The "self" keyword can be used differently based on the context it is called upon.
In an instance method, it refers to the object that is currently calling it.
With reference to the object, you can now manipulate it in the method (call other methods, do operations etc.).

*Example*
```
    # Let's create a class called restaurant and use the self keyword to output the class of the object.

    class Restaurant
        def initialize
            @name = "Loft Kitchen"
            @location = "8C - Rio Business Park, Ruaka"
            @telephone = "0780-526-492"
        end # end of initialize method

        def to_s
            "The name of the #{self.class} is #{@name}, it is situated at #{@location} and you can reach them on #{@telephone}"
        end # end of to_s method
    end # end of class

    loft_kitchen = Restaurant.new()
    p loft_kitchen.to_s # "The name of the Restaurant is Loft Kitchen.."

```


## 2. Getter Methods
Due to encapsulation, most objects for a class are restricted by nature (OOP Principle).
For example instance variables are not accessible directly outside the class.
In order for us to access them, we use getter methods to retrieve them.
It is best practice to use the same name as what you want to retrieve when defining the method.

*Example*
```
    # Let's create a class called restaurant and create 3 getter methods to retrieve the instance variables.


    class Restaurant
        def initialize
            @name = "Loft Kitchen"
            @location = "8C - Rio Business Park, Ruaka"
            @telephone = "0780-526-492"
        end # end of initialize method

        def name
            @name
        end # end of name getter method

        def location
            @location
        end # end of location getter method

        def telephone
            @telephone
        end # end of telephone getter method

    end # end of class

    loft_kitchen = Restaurant.new()
    p loft_kitchen.name # Loft Kitchen
    p loft_kitchen.location # "8C - Rio Business Park, Ruaka"
    p loft_kitchen.telephone # "0780-526-492"

```


## 3. Setter Methods
Setter work the opposite to Getter methods.
They are used to update encapsulated objects.
It is best practice to use the same name as what you want to retrieve when defining the method.
It is also best practice to also use the = equals sign to indicate it is a setter method.
Ruby also has a shortcut to allow to use a setter method with the assignment operator.

*Example*
```
    # Let's create a class called restaurant and create 3 setter methods to retrieve the instance variables.


    class Restaurant
        def initialize
            @name = "Loft Kitchen"
            @location = "8C - Rio Business Park, Ruaka"
            @telephone = "0780526492"
        end # end of initialize method

        def name=(new_name)
            @name = new_name
        end # end of name setter method

        def location=(new_location)
            @location = new_location
        end # end of location setter method

        def telephone=(new_telephone)
            @telephone = new_telephone
        end # end of telephone setter method

    end # end of class

    loft_kitchen = Restaurant.new()
    p loft_kitchen.name=("Hell's Kitchen")
    p loft_kitchen #[... "Hell's Kitchen"...]
    p loft_kitchen.location  = "13 Unit Drive, New York, US, 45123"
    p loft_kitchen # [... "13 Unit Drive, New York, US, 45123" ...]

```


## 4. Shortcut Accessor Methods
When the getter and setter methods are simple in nature and just assign / read the encapsulated objects without any complex operation, then Ruby has shortcuts to easily define them.
There are 3 attributes we can use to create them.
"Accessor Attribute" - This creates both a getter and setter method. Symbol: "attr_accessor"
"Reader Attribute" - This creates a getter method only. Symbol: "attr_reader"
"Writer Attribute" - This creates a setter method only. Symbol: "attr_writer"

*Example*
```
    # Let's create a class called restaurant and create 3 setter methods to retrieve the instance variables.


    class Restaurant
        def initialize
            @name = "Loft Kitchen"
            @location = "8C - Rio Business Park, Ruaka"
            @telephone = "0780526492"
        end # end of initialize method

        attr_reader :name # read only
        attr_accessor :location # read & write
        attr_writer :telephone # write only

    end # end of class

    loft_kitchen = Restaurant.new()
    p loft_kitchen.name # "Loft Kitchen"

    loft_kitchen.location  = "13 Unit Drive, New York, US, 45123"
    p loft_kitchen.location # "13 Unit Drive, New York, US, 45123"

    p loft_kitchen.telephone = "+1-951-654-9874"
    p loft_kitchen # [... "+1-951-654-9874" ...]

```


## 4. Initializing with Parameters
We can also set a class to allow a user to specify certain parameters when initializing an object.
We add the parameters in the initialize method and assign them to instance variables.
A class with defined parameters will not instantiate an object without all the arguments.

*Example*
```
    # Let's create a class called restaurant and create 3 setter methods to retrieve the instance variables.


    class Restaurant
        def initialize(location, telephone)
            @name = "Loft Kitchen"
            @location = location
            @telephone = telephone
        end # end of initialize method

        attr_reader :name # read only
        attr_accessor :location # read & write
        attr_writer :telephone # write only

    end # end of class

    loft_kitchen = Restaurant.new("13 Unit Drive, New York, US, 45123", "+1-951-654-9874" )
    p loft_kitchen.name # "Loft Kitchen"

    p loft_kitchen.location # "13 Unit Drive, New York, US, 45123"

    p loft_kitchen # [... "+1-951-654-9874" ...]

```
