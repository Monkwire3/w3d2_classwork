require_relative "board"
require_relative "player"
require_relative "computer_player"

class Game
    def initialize(n = 4)
        @board = Board.new(n)

        # @current_player = Player.new
        @current_player = ComputerPlayer.new
        @prev_guess = nil
        @history = Hash.new {[]}
    end

    def play
        @board.populate
        while !@board.won?
            play_turn
        end
    end


    def play_turn
        system("clear")
        @board.refresh
        @board.print_board
        guess = @current_player.get_guess(@board.get_valid_positions, @history)
        @board.guess(guess)
        @history[@board[guess]] = guess
        p @history

        # system("clear")
        @board.print_board
        
        @prev_guess = guess
        guess = @current_player.get_guess(@board.get_valid_positions, @history)
        @board.guess(guess)
        @history[@board[guess]] = guess
        

        #system("clear")
        @board.print_board
        sleep(1)
       if @board.compare(@prev_guess, guess)
            @board[@prev_guess].guessed_right = true
            @board[guess].guessed_right = true
            
       else

       end

    end
end

gamu = Game.new(4)
gamu.play
