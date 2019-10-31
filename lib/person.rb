require 'pry'

class Person

    attr_accessor :bank_account
    attr_reader :happiness, :hygiene, :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def happiness= (amount)
        @happiness = amount

          # binding.pry
        if @happiness > 10
          # binding.pry
            @happiness = 10

        elsif @happiness < 0
              @happiness = 0
        end

          # binding.pry
    end

    def hygiene= (amount)

        @hygiene = amount

        if @hygiene > 10
            @hygiene = 10

        elsif @hygiene < 0
              @hygiene = 0
        end

    end

    def clean?
         self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(salary_amount)
        self.bank_account += salary_amount
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



end
