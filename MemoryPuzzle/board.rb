require_relative 'card.rb'

class Board

    def initialize(n=4)
        @grid = Array.new(n) { Array.new(n) }
    end

    def populate
        @grid.each_with_index do |sub_arr, i_1|
            sub_arr.each_with_index do |el, i_2|
                @grid[i_1][i_2] = Card.new
            end
        end
    end

    def print_board
        @grid.each_with_index do |sub_arr, i_1|
            puts sub_arr.map {|el| el.letter }.join(" ")
        end
    end
end



test_board = Board.new
test_board.populate
test_board.print_board