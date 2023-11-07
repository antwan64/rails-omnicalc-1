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

    def square_root
      render ({ :template => "game_templates/square_root"})
    end

    def square_root_results

      @the_num = params.fetch("users_number").to_f
      @the_result = @the_num ** 0.5
    
      render ({ :template => "game_templates/square_root_results"})
    
    
    end

    def payment 
      render ({ :template => "game_templates/payment"})
    end

    def payment_results
      rate = (params.fetch("user_apr").to_f)/100
      apr = params.fetch("user_apr").to_f

      @apr = '%.4f%%' % apr

      @user_years = params.fetch("user_years").to_i
      user_pv = params.fetch("user_pv").to_f
      @user_pv = user_pv.to_fs(:currency)
      n = (@user_years * 12).to_f
      r = rate/12
      numer = r * user_pv
      denom = 1 - ((1+r) ** -n) 

      m_payment = numer / denom

      @payment = m_payment.to_fs(:currency)


      render ({ :template => "game_templates/payment_results"})


    end

    def random
      render ({ :template => "game_templates/random"})
    end

    def random_results
      @min_input = params.fetch("user_min").to_f
      @max_input = params.fetch("user_max").to_f

      @result = rand(@min_input..@max_input)


      render ({ :template => "game_templates/random_results"})

    end

end
