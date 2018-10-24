require_relative 'stats_controller'

class StatsView
    def greeting
        puts "Welcome to my awesome stats app!"
    end

    def menu
        puts "1. Insert numbers"
        puts "2. List numbers"
        puts "3. Show average"
        puts "4. Quit"
        return gets.chomp.to_i
    end

    def read_numbers
        values = []
        puts "Please enter one number per line (or 'end'):"
        num = ''
        until num == 'end'
            num = gets.chomp
            values.push(num.to_i) if num != 'end'
        end
        return values
    end

    def display_numbers(numbers)
        puts "Numbers: #{numbers.inspect}"
    end

    def display_average(average)
        puts "Average: #{average}"
    end

    def goodbye
        puts "Goodbye!"
    end
end