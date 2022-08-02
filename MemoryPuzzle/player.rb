class Player

    def initialize

    end

    def get_guess(valid)
        guess = gets.chomp.split(" ").map(&:to_i)
        raise StandardError "Invalid guess" if !valid.include?(guess)
        return guess
    end
end

