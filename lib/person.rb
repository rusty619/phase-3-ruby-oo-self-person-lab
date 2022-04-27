# your code goes here
class Person
    attr_accessor :name
    attr_accessor :bank_account
    attr_accessor :happiness
    attr_accessor :hygiene

    def initialize(name)
        self.name = name
        self.bank_account = 25
        self.happiness = 8
        self.hygiene = 8
    end

    def happiness=(num)
        if num > 10
            self.happiness = 10
        elsif num < 0
            self.happiness = 0
        else
            self.happiness = num
        end
    end

    def hygiene=(num)
        if num > 10
            self.hygiene = 10
        elsif num < 0
            self.hygiene = 0
        else
            self.hygiene = num
        end
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 5
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        seld.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
       "Hi #{friend}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            [self, friend].each{ |person| person.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each{|person| person.happiness += 1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

rus = Person.new("ruslan")
puts rus
puts rus.name
rus.happiness = 2
