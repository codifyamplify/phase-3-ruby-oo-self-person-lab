# your code goes here
class Person
    # attributes that should be read and set
    attr_accessor :bank_account
    # attributes that should be read
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    # write happiness setter method
    def happiness=(num)

        @happiness = if num > 10
                            10
                        elsif num < 0
                            0
                        else 
                            num
                        end

    end
    # write hygiene method
    def hygiene=(num)
        @hygiene = if num > 10
                        10
                    elsif num < 0
                        0
                    else num
                    end

    end
    # now to write some non attribue instance methods
    # write a clean? method that assesses current hygiene attribue
    def clean?
        self.hygiene > 7
    end
    # write happy? method that assesses current happiness attribute
    def happy?
        self.happiness > 7
    end
    # write a gets_paid(amount) method that accepts an amount and adds it to bank_account
    def get_paid(amount)
       self.bank_account += amount 
        "all about the benjamins"
    end
    # write a take_bath method that will add 4 points to the hygiene attribute
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    # write a work_out method that decreases hygiene attribute by 3 points
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    # write a method call_friend that accepts one argument
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    # write start_conversation(friend, topic) that accepts two arguments
    def start_conversation(friend, topic)
        # "blah blah partisan blah lobbyist" if topic = politics
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

# Person.new("johnny")

# puts johnny.gets_paid(4)