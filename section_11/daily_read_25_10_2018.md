# Daily Read
**Author:** Ng'ethe Maina
**Date:** 25/10/2018

## Morning Session

I learnt three methods that you can use on an array.
> Inject & Reduce Methods
> Flatten Method



### 1. Inject & Reduce do the same thing.
They help keep track of an operation / computation as you iterate over an array.
Best used with arithmetic computations in an array (e.g. Rolling sum)

*Example*
```
    # sample array (A restaurant sales)
    loft_restaurant_daily_sales = [120, 200, 100, 120, 640, 80]
    # You can now add them together using the inject or reduce method
    # I personally like inject as reduce (word can confuse it's meaning)
    loft_restaurant_daily_sales.inject(0) { |previous, current| previous + current }
    # code above will give you the total sales for that day for the loft restaurant
    # Option 2, incase of the above, where previous can be zero, you don't need to add it
    # This will also be valid
    loft_restaurant_daily_sales.reduce { |p,c| p+c }
    # you can store the computation in a new object
    sum = loft_restaurant_daily_sales.inject {|prev, curr| prev + curr}
    # if you output sum, it should give you the current total
    p sum # 1260
```

### 2. The Flatten Method
This method helps remove nested arrays from the main array and returns a new array with all files in a serialized manner. It doesn't mutate by default, but it has a bang "!" method. And also it doesn't matter how many nested arrays you have

*Example*
```
    # sample nested array (A restaurant Menu)
    loft_separate_menu = [["Tea","Coffee","Mandazi"],
                        ["Pilau", "Githeri", "Beans", "Ndengu"],
                        ["Fruits Salad", "Kachumbari", "Avocado"]]
    # when we call the flatten method it will return all in a new array
    p loft_separate_menu.flatten
    # as mention this doesn't alter the original object
    p loft_separate_menu # should be nested
    # and you can save the new array in a new object
    loft_summary_menu = loft_separate_menu.flatten
    # to permanently mutate use it's bang method
    loft_new_menu = loft_separate_menu.flatten!
```
