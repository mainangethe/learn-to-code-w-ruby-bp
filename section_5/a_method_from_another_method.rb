def add(a, b)
    a + b
end #method - add

def subtract(a, b)
    a - b

end #method - subtract

def multiply(a, b)
    a * b
end #method - multiply

def calculator(a, b, operation = "add")

    if operation == "add"
        "The results of adding #{a} and #{b} is #{add(a, b)}"

    elsif operation == "subtract"
        "The results of subtracting #{a} from #{b} is #{subtract(a, b)}"

    elsif operation == "multiply"
        "The results of multiplying #{a} and #{b} is #{multiply(a, b)}"

    else
        "Unfortunately, I cannot compute #{operation}"
    end # if statement

end #method - calc

p calculator(50.5, 20, 'divide')
