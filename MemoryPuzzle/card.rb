class Card

    def self.generate_random_letter
        return rand(0...26)
    end

    attr_accessor :letter, :hidden, :guessed_right

    def initialize(letter)
        # @letter = ('A'..'Z').to_a[Card.generate_random_letter]
        @letter = letter
        @hidden = false 
        @guessed_right = false
    end

    def hide
        @hidden = true
    end

    def reveal
        @hidden = false
    end

    def ==(card)
        return self.letter == card.letter
    end

    


end

