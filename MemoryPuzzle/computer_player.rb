class ComputerPlayer

    def initialize
        @known_cards = Hash.new
        @matched_cards = []
    end

    def recieve_revealed_card(pos, value)
        @known_cards[value] = pos

    end

    def receive_match(pos_1, pos_2)
    end

    def get_guess(valid)
        return valid.sample
    end
end