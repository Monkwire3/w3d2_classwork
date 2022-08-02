class Player

    def initialize

    end

    def get_guess
        gets.chomp.split(" ").map(&:to_i)
    end
end

