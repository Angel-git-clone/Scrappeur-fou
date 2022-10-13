require 'open-uri'
require 'nokogiri'

# home_page = Nokogiri::HTML(URI.open('http://annuaire-des-mairies.com'))

def mairie_95
  page = Nokogiri::HTML(URI.open('http://annuaire-des-mairies.com/val-d-oise.html'))

  townhalls = Array.new(0)

  page.css('//a[@class=lientxt]/@href').each.with_index do |href, index| 
    # boucle pour extraire les informations
    townhall = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/#{href.to_s[2, href.to_s.length]}"))

    city = townhall.css('h1')[1].text.split(' - ')[0].to_s
    email = townhall.css('tr.txt-primary')[3].css('td')[1].text.to_s

    townhalls[index] = { city => email } 
    # On met les Hashs dans un Array

    puts("La mairie de #{city} a pour adresse e-mail: #{email}") 
    # On met un petit message
  end

  return townhalls
end

puts mairie_95