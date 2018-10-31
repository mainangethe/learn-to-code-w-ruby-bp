# # lambda efficiency example
#
# def convert_to_euros(kenya_shillings)
#     kenya_shillings * 0.00866 if kenya_shillings.is_a?(Numeric)
# end # end of method
#
# def convert_to_dollars(kenya_shillings)
#     kenya_shillings * 0.00979 if kenya_shillings.is_a?(Numeric)
# end # end of method
#
# def convert_to_rupees(kenya_shillings)
#     kenya_shillings * 0.72458 if kenya_shillings.is_a?(Numeric)
# end # end of method
#
# def convert_to_rand(kenya_shillings)
#     kenya_shillings * 0.14531if kenya_shillings.is_a?(Numeric)
# end # end of method
#
# p convert_to_rand(1000) # 145.31 ZAR
# p convert_to_rupees(1000) # 724.58 INR
# p convert_to_dollars(1000) # 9.8 USD
# p convert_to_euros(1000) # 8.66 ZAR
#
# # Refactoring Option 1 - we are still doing a lot of duplication
# def currency_converter(kenya_shillings, currency)
#     yield(kenya_shillings, currency) if kenya_shillings.is_a?(Numeric)
# end
# p currency_converter(1000, "Rand") {|og_curr| og_curr * 0.14531 }
# p currency_converter(1000, "Rupees") {|og_curr| og_curr * 0.72458 }
# p currency_converter(1000, "Dollars") {|og_curr| og_curr * 0.00979 }
# p currency_converter(1000, "Euros") {|og_curr| og_curr * 0.00866 }
#
# # Final Refactor
# to_rand = lambda {|og_curr| og_curr * 0.14531 }
# to_rupees = lambda {|og_curr| og_curr * 0.72458 }
# to_dollars = lambda {|og_curr| og_curr * 0.00979 }
# to_euros = lambda {|og_curr| og_curr * 0.00866 }
# def currency_converter(kenya_shillings, currency_lambda)
#     currency_lambda.call(kenya_shillings) if kenya_shillings.is_a?(Numeric)
# end
#
# p currency_converter(1000, to_rand)
# p currency_converter(1000, to_rupees)
# p currency_converter(1000, to_dollars)
# p currency_converter(1000, to_euros)




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
