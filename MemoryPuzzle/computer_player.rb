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

    def get_guess(valid, history)
        history.each do |k, v|
            if v.length == 2
                v.each {|pos| return pos if valid.include?(pos)}
            end
        end
        return valid.sample
    end
end