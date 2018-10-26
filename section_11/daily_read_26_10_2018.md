# The Daily Read
**Author:** Ng'ethe Maina
**Date:** 26/10/2018


I learnt two methods that you can use on an array.
> zip method

> Sample method

> using the Asterix symbol with arrays



## 1. The Zip Method
The zip method joins multiple arrays and returns them as a nested array while
keeping track of the index within each array (best used to show a relation between
the two arrays) Also it doesn't mutate the arrays

*Example*
```
    # Let's create a sample restaurant Menu & Price
    # we will save it in a new variable "loft_kitchen_menu"

    loft_kitchen_food = %w[Pilau Githeri Madondo Ndengu]
    loft_kitchen_price = [80, 70, 80, 80]
    loft_kitchen_menu = loft_kitchen_food.zip(loft_kitchen_price)
    p loft_kitchen_menu # [["Pilau", 80], ["Githeri", 70], ["Madondo", 80], ["Ndengu", 80]]

```

## 2. The Sample Method
This method helps extract one or more elements in an array at random.
You are also able to extract multiple elements.
You need to specify the number of items you want in parenthesis when
you want to extract multiple elements.
NB: When extracting multiple elements, the method will not return a duplicate value.

When extracting multiple or when using parenthesis it will always return an array.
And finally, if you specify a number beyond the number of elements inside an array it will simply call all the elements (AT RANDOM) only.


*Example*
```
    # Let's create a sample order from our restaurant menu
    # we will save the sample order in a new variables "unataka", "tunadai", "tukona"

    loft_kitchen_menu = %w[Chai Ndunya Chapo Pilau Nyoyo Madondo]
    p unataka = loft_kitchen_menu.sample # will return 1 item at random

    p tunadai = loft_kitchen_menu.sample(3) # will return 3 items at random

    p tukona = loft_kitchen_menu.sample(25) # will only return what the menu has but at random

```

## 3. Using the Asterix Symbol on an array
So by default, the asterix symbol is used to do multiplications in Ruby for numbers. However, when used on a string or array it does something else.
It will always return a new array with the contents repeated by the second value.
It doesn't mutate the array



*Example*
```
    # Let's create a sample order from our restaurant menu
    # we will save the sample order in a new variables "chai_mbili", "ndunya_tano", "pilau_nne"

    chai_mbili = ["Chai"] *2
    ndunya_tano = ["Ndunya"] * 5
    pilau_nne = ["Pilau"] * 4

    p chai_mbili  # ["Chai", "Chai"]
    p ndunya_tano # ["Ndunya", "Ndunya", "Ndunya", "Ndunya", "Ndunya"]
    p pilau_nne # ["Pilau", "Pilau", "Pilau", "Pilau"]

```
