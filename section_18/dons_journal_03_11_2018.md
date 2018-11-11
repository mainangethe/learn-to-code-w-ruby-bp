# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 03/11/2018

**Entry No.** 22

I learnt about classes

> Creating a new class

> All about super & sub classes

> The .class & .methods methods

> the .superclass & .ancestor methods


## 1. Creating Classes
To create a class, we use the "class" keyword. This is also a method belonging.
Best practice when creating classes is to use "UpperCamelCase".

*Example*
```
    # Let's create an empty class called restaurant

    class Restaurant
    end # end of class

    # To create an object of class restaurant, we use the .new method
    loft_kitchen = Restaurant.new()

```


## 2. Super & Sub classes
Everything stems from the superclass "BasicObject" in Ruby. Everything else are subclasses when compared to it.
However, a subclass can also be a superclass to another subclass. Example. The "Fixnum" class is the subclass to the "Integer" superclass. The Integer class is also a subclass to the "Numeric" superclass.

*Example*
```
    # Let's make a reference to a number object and review the above

    number = 5
    number is an object of the class Fixnum
    Fixnum is a subclass to the class Integer
    Integer is the subclass to the class Numeric

```


## 3. The .class & .methods methods
To find out the class of an object, we use the ".class" method. It always returns the class belonging to the object in question.
The ".methods" method returns all the methods that the object can use. By default a subclass inherits all of the methods of it's superclass. This means, even an empty class already has methods available to it.

*Example*
```
    # let's evaluate our restaurant class and loft_kichen object with .class & .methods

    class Restaurant
    end

    loft_kichen = Restaurant.new()

    p loft_kichen.class # Restaurant
    p loft_kitchen.methods.sort # should return an array with all available methods inherited from it's superclass

```


## 4. The .superclass and .ancestors methods
When you want to know the parent class of a current class, you can make use of the .superclass method.
The .superclass method returns the superclass of it's current class it is evaluating. You can also chain the .superclass to go upto the main superclass "BasicObject". Beyond that, you get nil.
Instead of chaining .superclass methods to see the lineage of a class, you can simply call the .ancestor method which returns everything associated with the class upto BasicObject. (Take note though it also includes modules as well.)
**NOTE:** both methods are called on a class and not the object.

*Example*
```
    # let's evaluate our restaurant class and loft_kichen object with .superclass & .ancestor methods

    class Restaurant
    end

    loft_kichen = Restaurant.new()

    p loft_kichen.class # Restaurant
    p loft_kichen.class.superclass # Object
    # this means, class Restaurant is the subclass of class Object

    p loft_kitchen.class.superclass.superclass # BasicObject
    # this means class Object is the  subclass of class BasicObject but the superclass of class Restaurant

    p loft_kichen.class.ancestor #[Restaurant, Object, Kernel, BasicObject]
    
```
