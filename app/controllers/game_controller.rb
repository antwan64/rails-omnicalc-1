class GameController < ApplicationController

    def homepage
      render ({ :template => "home_templates/homepage"})
    end

    def square
      render ({ :template => "game_templates/square"})
    end

    def square_results

      @the_num = params.fetch("users_number").to_f
      @the_result = @the_num ** 2

      render ({ :template => "game_templates/square_results"})
    end
end
