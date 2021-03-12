class Cli

    attr_reader :user

    def prompt
        TTY::Prompt.new
    end

    # def initialize user=nil
    #     @user = user
    # end

    def welcome
        system('clear')
        puts "WELCOME TO SHOW SELECTOR THE #1 SPOT FOR SHOWS!!!"
        ask = prompt.yes?("Would you like to select some shows?")
        if ask
            list_shows
        else
            puts "Too bad"
            welcome
        end
    end

    def list_shows
        puts Show.all.pluck(:title)
    end


end