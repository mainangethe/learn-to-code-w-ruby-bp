# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 31/10/2018 at 20:07

**Entry No.** 20

I learnt all about manipulating files in Ruby

> Reading a File

> Writing to a File

> Loading another file to an Existing file

> Renaming & Deleting a File

> Command line Arguments


## 1. Reading a File
To read a file in ruby you need to use the File class and the .open method.
The .open method always returns an array with the contents of the file.

*Example*
```
    # Let's create a text file and read through it in Ruby
    # I createad a txt file - "loft_kitchen_menu.txt"
    # file content
        Pilau , 80
        Githeri , 70

    File.open("loft_kitchen_menu.txt").each { |file_line| puts file_line }
    # will output each menu item as a new line

```


## 2. Writing to a File
To use Ruby to write to a file, you use the .open method with a second argument "w" or the "a".
    "w" equivalent to write
    "a" equivalent to ammend
Key differences is the write option will override everytime it is executed while the ammend option adds a new line without changing what it found in the file.
The actual writing you can use "File.print" and "File.write" which don't add a new line or the "File.puts" method.

*Example*
```
    # Let's add more menu items to the menu txt file we created
    # To override the existing file
    File.open("loft_kitchen_menu.txt", "w").each do
        File.puts "Mandazi, 10"
        File.write "Minji, 120"
    end # end of block

    # To append to the existing file
    File.open("loft_kitchen_menu.txt", "a").each do
        File.puts "Chai, 20"
        File.write "Nyoyo, 70"
    end # end of block

```


## 3. Loading another file to an existing file
You can load other ruby files in another existing file.
You can use the "load" method or the "require" method or the "require_relative" method.
The load method can be used to load the same file multiple times.
The require and require_relative method are very identical in nature and only differ from where they refer to check for the file. They also only load the file once.
Require method looks for the file starting from the default installation file of Ruby, while require_relative checks for the file from the existing file's folder.
Also when loading ruby files, you don't need to enter the .rb file extension.
Also "./" always means the current folder the existing file is held.

*Example*
```
    # Let's assume we have two text files for the restaurant menus
    # lk_breakfast_menu.rb
    # lk_lunch_menu.rb

    #Assuming we are in the breakfast menu ruby file
    # To load the lunch menu ruby file we can call it multiple times with the .load method

    load "lk_lunch_menu.rb"
    load "lk_lunch_menu" # also valid and will also duplicate if it had an output option

    #Assuming we had not loaded the file, we can use the "require" / "require_relative" options

    require "./lk_lunch_menu.rb" # you have to specify the folder
    require_relative "lk_lunch_menu" # also valid

```


## 4. Renaming and Deleting Files
You can rename an existing file using the File.rename method. It takes two(2) arguments, the existing name and the new proposed name you want to rename it to. (names have to include the file extensions)

To delete an existing file, you need to use the File.delete method. It takes one(1) argument, the existing file



*Example*
```
    # Let's assume we have 2 menu files for our restaurant opening dates
    # lk_breakfast_menu.txt
    # lk_lunch_menu.txt

    # let's rename the breakfast menu to have the full name of the restaurant
    File.rename("lk_breakfast_menu.txt", "loft_kitchen_breakfast_menu.txt") # should rename the file

    #let's delete the kitchen menu
    File.delete("lk_lunch_menu.txt")

```

## 5. Using Command Line Arguments
When running Ruby files in the command line we can make use of command line arguments.
To use command line arguments, we use the constant "ARGV" keyword.
**NOTE:** The constant always returns the variables as Strings in an array.
To enter the arguments, you need to add them while entering the command in the command line.
Also to enter multiple arguments, use the space to differentiate them.

*Example*
```
    # Let's make use of the command line arguments to produce a computation

    ARGV.each {|args| puts args.to_i ** 2 }

```
