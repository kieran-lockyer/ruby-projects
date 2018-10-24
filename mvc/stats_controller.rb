require_relative 'stats_model'
require_relative 'stats_view'

class StatsController
    def initialize
        @model = StatsModel.new
        @view = StatsView.new
    end

    def run
        @view.greeting

        running = true
        while running
            choice = @view.menu

            case choice
            when 1
                @model.insert(@view.read_numbers)
            when 2
                @view.display_numbers(@model.list)
            when 3
                @view.display_average(@model.average)
            when 4
                @view.goodbye
                running = false
            end
        end
    end
end