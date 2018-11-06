# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 05/11/2018

**Entry No.** 23

I learnt about classes

> Initializing variables & the initialize methods

> Creating Instance Public Methods

> Overriding methods


## 1. Initializing Variables and using the Initialize Method
Instance variables are an object's attributes. They help give an object a current state.
They are used to distinguish different objects from one another.
To create an instance variable, we use the "@" sigil symbol. Otherwise Ruby will assume it is a local variable.

To initialize the variables we use the "initialize" method.
Without calling the initialize method, each object will be created with no state.
Having a current state doesn't mean the state is constant, an object's state can always be altered.
The initialize method is also a private method, meaning you can't call it outside the class and also you don't need to call it when creating a new object.

*Example*
```
    # Let's create a class called restaurant and give it 3 instance variables

    class Restaurant
        def initialize
            @name = "Loft Kitchen"
            @location = "8C - Rio Business Park"
            @telephone = "0780526492"
        end # end of method
    end # end of class

    # To create an object of class restaurant, we use the .new method
    loft_kitchen = Restaurant.new()
    p loft_kitchen

```


## 2. Creating Instance Methods
Instance methods are methods created at a class level.
All instance levels are available to all object instances.
Instance methods need a receiver to run and can't be called on their own.

*Example*
```
    # Let's create a class called restaurant and give initialize 3 instance variables and a new .info method to return details about the object

    class Restaurant
        def initialize
            @name = "Loft Kitchen"
            @location = "8C - Rio Business Park, Ruaka"
            @telephone = "0780526492"
        end # end of initialize method

        def info
            "The name of the restaurant is #{@name}, it is situated at #{@location} and you can reach them on #{@telephone}"
        end # end of info method
    end # end of class

    # To create an object of class restaurant, we use the .new method
    loft_kitchen = Restaurant.new()
    p loft_kitchen.info # "The name of the restaurant is Loft Kitchen.."

```


## 3. Overriding Methods
As a sub-class, you automatically inherit all the methods from your respective superclass.
There are instances where the functionality of an inherited method needs to operate differently at a sub-class level. In such instances, we override the method in order to work accordingly to the current class level.
To override a method we simply use the same name and now provide the functionality we would want it to do. It will only affect the method when called by that class.

*Example*
```
    # let's override the .to_s at the Restaurant class level
    # At object superclass level, the .to_s level will convert the values given to a string.
    # At Restaurant class level, we will make it return the restaurant details

    class Restaurant
        def initialize
            @name = "Loft Kitchen"
            @location = "8C - Rio Business Park, Ruaka"
            @telephone = "0780526492"
        end # end of initialize method

        def to_s
            "The name of the restaurant is #{@name}, it is situated at #{@location} and you can reach them on #{@telephone}"
        end # end of to_s method
    end # end of class

    # To create an object of class restaurant, we use the .new method
    loft_kitchen = Restaurant.new()
    p loft_kitchen.to_s # "The name of the restaurant is Loft Kitchen.."

```
