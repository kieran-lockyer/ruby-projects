require_relative 'stats_controller'

class StatsModel
    def initialize
        @numbers = []
    end

    def insert(numbers)
        @numbers += numbers
    end

    def list
        if @numbers.length < 1
            @numbers
        else
            "No numbers added!"
        end
    end

    def average
        unless @numbers.length < 1
            @numbers.sum / @numbers.length
        else
            "No numbers added!"
        end
    end
end