# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 12/11/2018

**Entry No.** 29

I learnt about how to create class variables & class methods, and that in Ruby you can customize existing classes (Monkey Patching)

- [Creating a Subclass](#creating-subclasses)
- [Creating Class Variables & Class Methods](#the--is_a--and--instance_of--methods)
- [Overriding Methods in Subclasses](#overriding-methods-in-subclasses)
- [The Super Keyword](#the-super-keyword)
- [Class Variables in Subclasses](#subclass-class-variables)
- [Singleton Methods](#singleton-methods)


## Creating Subclasses
A subclass is a child class belonging to another parent class.
Inheritance is single based in Ruby, meaning a class can only inherit from only one class.
When inheriting, it will get all the methods that were created in the superclass. This helps in avoiding duplication of code.
To create a subclass, we only use the less than "<" symbol.

*Example*
```ruby
    # Let's create a parent class Employee and
    # 2 children classes (Manager and Worker)

    class Employee
        def initialize(name, age)
            @name = name
            @age = age
        end

        attr_accessor :age
        attr_reader :name

        def introduction
            "Hi, I am #{name}, I am a #{self.class} and I am #{age} years old."
        end
    end
    class Manager < Employee
    end
    class Worker < Employee
    end

    # Let us test the above
    janet = Employee.new("Janet W.", 35)
    ngethe = Manager.new("Ng'ethe M.", 29)
    jesse = Worker.new("Jesse M.", 23)

    p janet.introduction
    p ngethe.introduction
    p jesse.introduction
    puts

    p Manager < Employee
    p Worker < Object  

```


## The .is_a? and .instance_of? methods
These predicate methods evaluate the class relationships of the objects in question.

The ".is_a?" method will return true,if any of the classes being asked appears in the objects inheritance hierarchy.

The ".instance_of" method will return true, only to the direct instance class for that particular object.

*Example*
```ruby
    # Let's create a parent class Employee and
    # 2 children classes (Manager and Worker)

    class Employee
        def initialize(name, age)
            @name = name
            @age = age
        end

        attr_accessor :age
        attr_reader :name

        def introduction
            "Hi, I am #{name}, I am a #{self.class} and I am #{age} years old."
        end
    end
    class Manager < Employee
    end
    class Worker < Employee
    end

    # Let us test the above
    janet = Employee.new("Janet W.", 35)
    ngethe = Manager.new("Ng'ethe M.", 29)
    jesse = Worker.new("Jesse M.", 23)

    p Worker.is_a?(Object) # True
    p Worker.instance_of(Object) # False

```


## Exclusive Instance Methods
Subclasses inherit all the instance methods of it's parent class.
However, all of it's own instance methods are exclusive to itself and it's future child classes.

*Example*
```ruby
    # Let's create a parent class Employee and
    # 2 children classes (Manager and Worker)

    class Employee
        def initialize(name, age)
            @name = name
            @age = age
        end

        attr_accessor :age
        attr_reader :name

        def introduction
            "Hi, I am #{name}, I am a #{self.class} and I am #{age} years old."
        end
    end
    class Manager < Employee
        def yell
            "I AM THE BOSS!!"
        end
    end
    class Worker < Employee
        def clock_in(time)
            "Starting my shift at #{time.strftime("%H:%M, %d %B %Y")}"
        end
    end

    # Let us test the above
    janet = Employee.new("Janet W.", 35)
    ngethe = Manager.new("Ng'ethe M.", 29)
    jesse = Worker.new("Jesse M.", 23)

    puts
    p ngethe.yell # "I AM.."
    p janet.yell # Error

    p jesse.clock_in(Time.now)
    p ngethe.clock_in(Time.now) # Error

```


## Overriding methods in Subclasses
You can customize an inherited method to function differently in a subclass than how it works in a superclass.
To override an existing method, we simply define a new method in the subclass with repeating the original name as it's method name.

*Example*
```ruby
    # Let's create a parent class Employee and
    # 2 children classes (Manager and Worker)

    class Employee
        def initialize(name, age)
            @name = name
            @age = age
        end

        attr_accessor :age
        attr_reader :name

        def introduction
            "Hi, I am #{name}, I am a #{self.class} and I am #{age} years old."
        end
    end
    class Manager < Employee
        def introduction
            "My name is #{name} and I am your new #{self.class}"
        end
        def yell
            "I AM THE BOSS!!"
        end
    end
    class Worker < Employee
        def clock_in(time)
            "Starting my shift at #{time.strftime("%H:%M, %d %B %Y")}"
        end
    end

    # Let us test the above
    janet = Employee.new("Janet W.", 35)
    ngethe = Manager.new("Ng'ethe M.", 29)
    jesse = Worker.new("Jesse M.", 23)

    puts
    p janet.introduction # "Hi, I am.."
    p ngethe.introduction # "I am Ng'ethe and I am.."
    p jesse.introduction # "Hi, I am.."
```


## The Super Keyword
The super keyword in a subclass allows customization on a subclass.
It allows the subclass to create customized initialize methods by sending the common variables to the superclass.
**Syntax**: use the "super" keyword with parentheses with arguments.

It also allows to customize instance methods by allowing it to return the default return from the same method in the superclass and make changes to it in the subclass region.
**Syntax:** Use the "super" keyword without parenthesis "()"

If you want current method in a subclass to have a unique argument, but not to take it to the superclass is to send a blank list of arguments when referencing the superclass.
**Syntax**: Use the super keyword and provide a blank parenthesis.

*Example*
```ruby
    # Let's create a parent class Employee and
    # 1 child class (Manager) and see how to
    # use the super keyword

    class Employee
        def initialize(name, age)
            @name = name
            @age = age
        end

        attr_accessor :age
        attr_reader :name

        def introduction
            "Hi, I am #{name}, I am a #{self.class} and I am #{age} years old."
        end
    end
    class Manager < Employee
        def initialize(name, age, rank)
            super(name, age)
            @rank = rank
        end

        def introduction
            default = super
            default += "I am your new Boss!"
        end
        def yell
            "I AM THE BOSS!!"
        end
    end

    # Let us test the above
    janet = Employee.new("Janet W.", 35)
    ngethe = Manager.new("Ng'ethe M.", 29, "Head, Development")


    puts
    p janet.introduction
    p ngethe.introduction

```


## Subclass Class Variables
A subclass can also have it's own unique class variables that are separate from the superclass.
They use the same syntax 2 sigil "@@" symbols.

*Example*
```ruby

    # Let's create a parent class Employee and
    # 1 child class(Manager) that has class variables

    class Employee
        @@employee_count = 0

        def initialize(name, age)
            @name = name
            @age = age
            @@employee_count += 1
        end

        attr_accessor :age
        attr_reader :name

        def self.count
            @@employee_count
        end

    end

    class Manager < Employee
        @@manager_count = 0

        def initialize(name, age, rank)
            super(name, age)
            @rank = rank
            @@manager_count += 1
        end
        attr_reader :rank

        def self.count
            @@manager_count
        end
    end

    # Let us test the above
    janet = Employee.new("Janet W.", 35)
    ngethe = Manager.new("Ng'ethe M.", 29, "Head, Development")


    puts
    p Employee.count
    p Manager.count

```


## Singleton Methods
A singleton method is a method that belongs to one object only.
It is best used during unit testing when one wants to evaluate / provide special privileges to one object.

To define a singleton method, we reference the object as part of the name of the method when creating it.

*Example*
```ruby

    # Let's create a class Player which will randomize
    # a number between 1:100 and if > 50 , wins, and
    # < 50 loses
    # we will then create a singleton method that breaks
    # the above condition and only loses

    class Player
        def play_game
            rand(1..100) > 50 ? "Winner" : "Loser"
        end
    end

    # Let's create our objects
    ngethe = Player.new
    maina = Player.new

    # let's create a singleton method on maina
    def maina.play_game
        "Loser"
    end

    # Let us test the above
    p ngethe.play_game
    p maina.play_game # it will always lose

```
