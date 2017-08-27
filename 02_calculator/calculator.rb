#write your code here

#adds two numbers
def add first, second
    first + second
end

#subtracts two numbers
def subtract first, second
    first - second
end

#sums up an array
def sum array
    sum = 0
    array.each do |x|
        sum += x
    end
    sum
end

#multiplies two numbers
def multiply first, second
    first * second
end

#multiplies every number in the array
def multiply_arr array
    if array.empty?
        product = 0
    else
        product = 1
        array.each do |x|
            product *= x
        end
    end
    product
end

#raises a number to a power
def power number, exponent
    number**exponent
end

#gives the factorial of a number
def factorial number
    if number > 0
        result = 1
        number += 1
        number.to_i.times do |i|
            if i != 0
                result *= i
            end
        end
    else
        result = 0
    end
    result
end
