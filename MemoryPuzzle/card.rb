class Card

    def self.generate_random_letter
        return rand(0...26)
    end

    attr_reader :letter, :hidden

    def initialize
        @letter = ('A'..'Z').to_a[Card.generate_random_letter]
        @hidden = true 
        @guessed = false
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

