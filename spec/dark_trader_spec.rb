require_relative ('../lib/dark_trader.rb')

describe "an array of real-time crypto " do
  describe "if it's nil" do
    begin
      expect(result(page)).to include{"BTC"} #partie de code qui risque de produire une erreur
    rescue => e #e est une exception
      puts "Oups une petite erreur est arrivé, mais c'est pas grave" 
      #le résultat que tu veux voir au lieu (et à la place) d'une erreur terminal
    end
  end
end

