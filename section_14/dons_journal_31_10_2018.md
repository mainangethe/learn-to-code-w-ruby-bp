# The Don's Journal

**Author:** Ng'ethe Maina

**Date:** 31/10/2018

**Entry No.** 18

I learnt all about lambdas
> The Lambda Object

> Currency Conversion Method with Lambdas


## 1. The Lambda Object
The lambda object is closely related with a proc but very different. It works like an anonymous/nameless method.
It is defined using the lambda keyword and takes a block of code.
Key differences between a lamda and a proc are
1. Lambdas will only run once you put the right number of arguments it was defined with while a proc will just assign nil and continue.
2. When they are being used with a method, Lambdas will return control back to the method if you use the "return" keyword. while proc will end the method when you use the "return" keyword. Thus professionaly, lambdas are preferred.



*Example*
```
    # Let's create a restaurant menu call and pass a lambda with the menu items

    def leta_menu
        puts "Welcome to Loft Kitchen"
        puts "Here is our menu"
        yield if block_given?
    end # end of method

    breako = lambda { puts "We have Tea, Mandazi, Chapati, Pilau and Nyoyo"}

    leta_menu(&breako) # should place the last statement from the lambda

    breako.call # "We have Tea, Mandazi, Chapati, Pilau & Nyoyo"

```

## 2. Building a Currency Converter Method
I am now able to create a currency converter method to convert KES to USD, ZAR, EUR, and INR and refactor it using lambdas.



*Example*
```
    # Let's create 4 methods that can convert KES to USD or to ZAR
    # or to EUR or to INR.

    def convert_to_rand(kenya_shillings)
        kenya_shillings * 0.14534 if kenya_shillings.is_a?(Numeric)
    end # end of method

    def convert_to_rupees(kenya_shillings)
        kenya_shillings * 0.72464 if kenya_shillings.is_a?(Numeric)
    end # end of method

    def convert_to_euros(kenya_shillings)
        kenya_shillings * 0.00865 if kenya_shillings.is_a?(Numeric)
    end # end of method

    def convert_to_dollars(kenya_shillings)
        kenya_shillings * 0.00979 if kenya_shillings.is_a?(Numeric)
    end # end of method

    p convert_to_rand(1000) # 145.34

    # A refactored method takes the KES & a lambda which holds the unique conversions for each currency
    to_rand = lambda { |kes| kes * 0.14534 }
    to_rupees = lambda { |kes| kes * 0.72464 }
    to_euros = lambda { |kes| kes * 0.00865 }
    to_dollars = lambda {|kes| kes * 0.00979 }

    def currency_converter(kenya_shillings, currency_lambda)
        currency_lambda.call(kenya_shillings) if kenya_shillings.is_a?(Numeric)
    end # end of method
    p currency_converter(1000, to_rupees) # 724.64  

```
