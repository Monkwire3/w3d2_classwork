require_relative "board"
require_relative "player"

class Game
    def initialize(n = 4)
        @board = Board.new(n)

        @current_player = Player.new
        @prev_guess = nil
    end

    def play
        @board.populate
        play_turn
    end

    def play_turn
        @board.refresh
        @board.print_board
        guess = @current_player.get_guess
        @board.guess(guess)

        @board.print_board
        
        @prev_guess = guess
        guess = @current_player.get_guess
        @board.guess(guess)

       if @board.compare(prev_guess, guess)
            @board[prev_guess].guessed_right = true
            @board[guess].guessed_right = true
            
       end

    end
end

gamu = Game.new(4)
gamu.play
