class Book
    attr_accessor :title

    #capitalize words in a string
    def capitalized string
        little_words = ["a", "an", "the", "and", "in", "of"]
        string = string.downcase
        string = string.split(" ")
        if string.length > 1
            string.each_index do |i|
                if i == 0 || !little_words.include?(string[i])
                    string[i] = string[i].capitalize
                end
            end
        else
            string[0] = string[0].capitalize
        end
        string.join(" ").strip
    end

    def title=(string)
        @title = capitalized(string)
    end
end
