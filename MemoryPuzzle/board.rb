require_relative 'card.rb'

class Board

    def initialize(n=4)
        @grid = Array.new(n) { Array.new(n) }
        @size = n
    end

    def populate
        card_values = []
        numbers = (0...@size**2 / 2).to_a.concat((0...@size**2 / 2).to_a).shuffle
        alpha = ('A'..'Z').to_a
      

        @grid.each_with_index do |sub_arr, i_1|
            sub_arr.each_with_index do |el, i_2|
                @grid[i_1][i_2] = Card.new(alpha[numbers.pop])
            end
        end
    end

    def print_board
        puts "  " + (0...@size).to_a.join(" ")
        @grid.each_with_index do |sub_arr, i_1|

            puts String(i_1) + " " + sub_arr.map {|el| el.hidden ? " " : el.letter }.join(" ")
        end

    end

    def refresh
        @grid.each do |sub_arr|
            sub_arr.each  {|card| card.hide if !card.guessed}
        end
    end
end



test_board = Board.new
test_board.populate
test_board.print_board