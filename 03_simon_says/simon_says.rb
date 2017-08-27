#write your code here

#repeats argument
def echo string
    string
end

#capitalize argument
def shout string
    string.upcase
end

#repeat the argument a specified number of times
def repeat string, number_of_times=2
    ((string + " ") * number_of_times).strip
end

#get a substring of a string
#from beginning to specified index
def start_of_word string, index
    string[0..index-1]
end

#get first word of a string
def first_word string
    result = string.split(" ")
    result[0]
end

#capitalize first letter of words
def titleize string
    little_words = ["over", "and", "the"]
    string = string.split(" ")
    string.each_index do |i|
        if i == 0 || !little_words.include?(string[i])
            string[i] = string[i].capitalize
        end
    end
    string.join(" ").strip
end