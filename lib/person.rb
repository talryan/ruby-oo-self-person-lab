# your code goes here
#attr_accessor 
#attr_reader :name
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = bank_account
        @bank_account = 25
        @happiness = happiness
        @happiness = 8
        @hygiene = hygiene
        @hygiene = 8

    end
def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10 
    @happiness = 0 if @happiness < 0
end

def hygiene=(level)
    @hygiene = level
    @hygiene = 10 if @hygiene > 10 
    @hygiene = 0 if @hygiene < 0 
end
def happy?
    happiness > 7
end
def clean?
    hygiene > 7
end
def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
end
def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end
def work_out
    self.hygiene -= 3 
    self.happiness += 2 
    "♪ another one bites the dust ♫"
end
def call_friend(friend)
    [friend, self].each {|x| x.happiness += 3 }
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end
def start_conversation(amigo,topic)
   
    if topic == "politics"
        [amigo, self].each {|x| x.happiness -=2 }
        "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        [amigo, self].each {|x| x.happiness += 1}
            "blah blah sun blah rain"
    elsif topic != "politics"||"weather"
        "blah blah blah blah blah"
    end
   
end

end