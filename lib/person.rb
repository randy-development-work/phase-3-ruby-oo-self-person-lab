require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name=name
        @bank_account=bank_account
        @happiness=happiness
        @hygiene=hygiene
    end

    # def bank_account(value)
    #     self.bank_account = value
    # end

    # setting max and min limits for hygiene and happiness
    def happiness=(value)
        @happiness = value
        @happiness = 10 if value > 10
        @happiness = 0 if value < 0
    end

    def hygiene=(value)
        @hygiene = value
        @hygiene = 10 if value > 10 
        @hygiene = 0 if value < 0
    end

    def clean?
        return true if self.hygiene > 7
        false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end

end

him = Person.new("him")
puts him.bank_account