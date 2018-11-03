# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 02/11/2018 at 07:00

**Entry No.** 21

I learnt all about regular expressions

> Searching String Contents

> regexp - return index on first match

> regexp - scan method

> regexp - anchors

> regexp - the wildcard symbol

> regexp - the backslash character

> regexp - the caret symbol

> regexp - the sub and gsub methods


## 1. Searching string contents
To review the contents of a string, we use the ".start_with?", ".end_with?" and ".include?" methods.
They are all predicate methods and evaluate the strings content to find the substring passed as its argument.
The .start_with? method confirms whether the substring entered is what the string it's evaluating starts with.
While the .end_with? method does the opposite, it returns a true if the substring is what the string in evaluation ends with.
The .include? method returns true if the string being evaluated has the substring passed in the contents irrespective of it's position. So long as the substring appears in the string, it will return TRUE.
The substrings you enter can be from 1 character to full words.

*Example*
```
    # Let's create a string with the name of the restaurant and let's evaluate it with the 3 methods

    restaurant_name = "Loft Kitchen"

    # .start_with? method
    p restaurant_name.start_with?("oft") # false
    p restaurant_name.start_with?("lo") # true
    p restaurant_name.start_with?("loft") # true

    # .end_with? method
    p restaurant_name.end_with?("n") # true
    p restaurant_name.end_with?("kitchen") # false, the method is case sensitive

    # .include? method
    p restaurant_name.include?(" ") # true
    p restaurant_name.incldue?("t K") # true
    p restaurant_name.include?(" lo") # false

```


## 2. Intro to Regular Expressions
A regular expression is another ruby object.
It belongs to the class "Regexp".
It is symbolized with two(2) forward slashes "//".
Anything entered in between the slashes will be evaluated within the string.
The first evaluation is to return the index on first match. We will use the
"=~"(tilde) symbol to ask for the evaluation.
*Example*
```
    # Let's make a reference to our restaurant menu items and look for matches

    lk_menu = "Pilau, 80, Chapati, 20, Mandazi, 10, Chai, 20"

    p lk_menu =~ /"i"/ # 1 the index of the first i
    p lk_menu =~ /"anda"/ # 25 the index of the first instance it found it
    p lk_menu =~ /" "/ # 6 even whitespaces are valid characters

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
