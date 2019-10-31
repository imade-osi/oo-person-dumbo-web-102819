
class Person 

    attr_accessor :bank_account
    attr_reader :happy_points, :hygiene_points

    def initialize(name)
        @name = name 
        @bank_account = 25 
        @happy_points = 8 
        @hygiene_points = 8
    end 

    
    def happy_points=(amount)
        @happy_points += amount

        if @happy_points > 10
            @happy_points = 10

        elsif @happy_points < 0
              @happy_points = 0 
        end 

    end 

    def hygiene_points=(amount)
        
        @hygiene_points += amount

        if @hygiene_points > 10
            @hygiene_points = 10

        elsif @hygiene_points < 0
              @hygiene_points = 0 
        end 
          
    end 

    def clean?
         self.hygiene_points > 7 
    end 

    def happy?
        self.happy_points > 7 
    end 

    def get_paid(salary_amount)
        self.bank_account += salary_amount
        "all about the benjamins"
    end 

    def take_bath 
        self.hygiene_points += 1
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happy += 2
        self.hygiene_points -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happy_points += 3
        friend.happy_points += 3  
    end 

end 