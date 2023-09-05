# Class that determines what you will say when you give away the extra cookie.
# If your friend likes cookies and his name is Do-yun, then you will say:
# "One for Do-yun, one for me."
# otherwise it will say
# "one for you, one for me."
class TwoFer
    def self.two_fer(name = "you")
        "One for #{name}, one for me."
    end    
end