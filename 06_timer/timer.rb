class Timer
    attr_accessor :seconds, :time_string

    def initialize
        @seconds = 0
        @time_string = "00:00:00"
    end

    #turns a number to string
    #pads with zero if needed    
    def padded number
        if number < 10
            result = "0" + number.to_s
        else
            result = number.to_s
        end
    end

    #converts seconds to a time string
    def seconds_to_s seconds
        hours = seconds / 3600
        minutes = seconds / 60
        seconds = seconds % 60

        if minutes >= 60
            minutes = minutes % 60
        end

        result = [padded(hours), padded(minutes), padded(seconds)]
        result.join(":")

    end

    #setter for :seconds
    def seconds=(number)
        if number > 0
            @seconds = number
            @time_string = seconds_to_s(number)
        else
            puts "You can't set timer to negative seconds"
        end
    end

end