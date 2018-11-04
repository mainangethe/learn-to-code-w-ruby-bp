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


## 3. The Scan Method
The scan method evaluates a string and returns all the instances it finds from the string.
It returns all its findings as an array. The potential problem with this is if it finds nothing, it will return an empty array.
The "[]" square brackets allow us to look for any of the characters in the expression.



*Example*
```
    # let's evaluate our same restaurant menu using the .scan method.

    lk_menu = "Pilau 80, Chapati 20, Mandazi 10, Chai 20"

    p lk_menu.scan( /i/ ) # ["i", "i", "i", "i"]
    p lk_menu.scan( /i/ ).length # 4 i's found
    p lk_menu.scan( /Ch/ ) # ["ch", "ch"]
    p lk_menu.scan( /Mandazia/ ) # []

    p lk_menu.scan( /[Ch]/ ) # ["C", "h", "C", "h"]

```


## 4. Regex Anchors
We can also specify where we want to evaluate the substring we are lookng for, similar to how the .start_with? and .end_with? methods.
In regular expressions, we use the "\A" and "\z" to specify where to explicitly look for the substring.
"\A" will specify that it should look for the substring at the start of the string.
"\z" will specify that look for it at the end of the string, and we also have to end the expression with it.



*Example*
```
    # let's evaluate our same restaurant menu while specifying where to look for.

    lk_menu = "Pilau 80, Chapati 20, Mandazi 10, Chai 20"

    p lk_menu.scan( /\APil/ ) # ["Pilau"]
    p lk_menu.scan( /0\z/ ) # ["20"]
    p lk_menu.scan( /0/ ) # [ "0", "0", "0", "0" ]

```


## 5. The wildcard symbol
The first time you come to viewing the wildcard, is when you search for the "." in a regex. And get shocked when you see the output.
In regex, the "." fullstop is seen as a wildcard. It means any valid character.
Thus when used in an expression, it will return all characters in the string that it Ruby considers valid.
You can also add it with other characters to make more complex queries.

*Example*
```
    # let's evaluate our same restaurant menu using the wilcard symbol.

    lk_menu = "Pilau 80, Chapati 20, Mandazi 10, Chai 20"

    p lk_menu.scan( /./ ) # ["P", "i", "l", "a", "u", " ", "8"...."0"]
    p lk_menu.scan( /.0/ ) # ["80", "20", "10", "20"]
    p lk_menu.scan( /a./ ) # [ "au", "ap", "at", "an", "az", "ai" ]

```


## 6. The Backslash Character
The backslash character is used to specify expections to the regular expression.
One is to allow a user to search for a fullstop.
It is also used to give other instructions, anchors, and other shorthands expressions
"\s" - whitespace
"\d" - all digits
"\D" - all non digits
""

*Example*
```
    # let's evaluate our same restaurant menu using various backslash expressions.

    lk_menu = "Pilau 80, Chapati 20, Mandazi 10, Chai 20."

    p lk_menu.scan( /\./ ) # [ "." ]
    p lk_menu.scan( /\s/ ) # [ " ", " ", " ", " ", " ", " ", " " ]
    p lk_menu.scan( /\d/ ) # [ "8", "0", "2", "0", "1", "0", "2", "0" ]
    p lk_menu.scan( /\D/ ) # [ "P", "i", "l", "a", " u", " ", ",", "C" ]

```


## 7. Seaching with Exclusion
Sometimes, you want to search for something minus other characters. That exclusion is achieved using the "^"caret symbol combined with the "[]" square brackets in regular expressions.
You can also tie in multiple characters to exclude including the shorthand keywords.

*Example*
```
    # let's evaluate our same restaurant menu using various exclusion expressions.

    lk_menu = "Pilau 80, Chapati 20, Mandazi 10, Chai 20."

    p lk_menu.scan( /[^aeiou]/ ) #[ "P", "l", " ", "8", "0", "C", "h", "p", t... "0" ]
    p lk_menu.scan( /[^\saieou]/ ) # [ "P", "l", "8", "0", "C", "h", "p" ]

```


## 8. The .sub and .gsub methods
We use the .sub and .sub methods if we want to substitute characters in a string.
The two(2) methods do the same thing and only differentiate on iteration, the .sub method only substitutes the first instance it finds, while the gsub(global substitute) changes all instances it finds.
To use the .gsub method at an efficient leveel when removing multiple characters one would rather use a regexp than chaining the same method.
Also the methods do not mutate the strings, however; they have bang methods.
They take two arguments, the first one is the character(s) to look for, and the second one is the character(s) to replace.

*Example*
```
    # let's subtitute our same restaurant menu using the 2 methods.

    lk_menu = "Pilau 80, Chapati 20, Mandazi 10, Chai 20."

    p lk_menu.sub( "20", "30" ) # "Pilau 80, Chapati 30, Mandazi 10, Chai 20."
    p lk_menu.sub( "0", "5" ) # "Pilau 85, Chapati 25, Mandazi 15, Chai 25."
    p lk_menu.gsub( /[\s\.,]/, "" ) # "Pilau80Chapati20Mandazi10Chai20"

```
