#write your code here

#check if vowel
def is_vowel string
    vowels = ["a", "e", "i", "o", "u"]
    result = false
    if vowels.include?(string[0].downcase)
        result = true
    end
    result
end

#checks if string starts with consonant
#or specified number of consonants in a row
def consonants string, number_of_times=1
    multiple_checks = []

    #checks for multiple consonants in a row
    if number_of_times > 1
        number_of_times.times do |i|
            multiple_checks << !is_vowel(string[i])
        end

    #checks if first letter is consonant
    else
        multiple_checks << !is_vowel(string)
    end
    !multiple_checks.include?(false)
end

#checks if word has special phoneme
def has_phoneme string
    result = false
    phonemes = ["sch", "qu"]
    count = 0

    #check first 3 letters
    if phonemes.include?(string[0..2])
        result = true
        count = 3
    #check first 2 letters
    elsif phonemes.include?(string[0..1])
        result = true
        count = 2
    else
        #check if first letter is consonant
        if consonants(string)
            #checks if next 2 letters is "qu"
            if phonemes.include?(string[1..2])
                result = true
                count = 3
            end
        end
    end
    return result, count        
end

#specify number of letters to swap
#and add "ay" at the end
def swap_letters word, number_of_letters
    ndx = number_of_letters - 1
    is_capitalized = false

    #check if word is capitalized
    if word[0] == word[0].upcase
        is_capitalized = true
    end

    #make sure all letters are lower case
    word = word.downcase

    #swap letters
    result = word[number_of_letters..-1] + word[0..ndx] + "ay"

    #capitalized new word if it was intially capitalized
    if is_capitalized
        result[0] = result[0].upcase
    end
    
    result
end

#turns a single word into pig latin
def pig_latin word

    #starts with a vowel
    if is_vowel(word)
        result = word + "ay"

    #else starts with consonant
    else
        phoneme, phoneme_count = has_phoneme(word)
        if phoneme
            if phoneme_count == 2
                result = swap_letters(word, 2)
            else
                result = swap_letters(word, 3)
            end            
        elsif consonants(word, 3)
            result = swap_letters(word, 3)
        elsif consonants(word, 2)
            result = swap_letters(word, 2)
        else
            result = swap_letters(word, 1)
        end
    end
    result
end

#checks if single word or multiple
#turns each into pig latin accordingly
def translate string
    result = []
    string = string.split(" ")

    string.each do |x|
        result << pig_latin(x)
    end
    
    result.join(" ").strip
end


puts swap_letters("captain", 2)