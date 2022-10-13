require 'open-uri'
require 'nokogiri'

page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))


def name(link)
  bourse = []

  link.xpath('/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[*]/td[2]/div/a[2]').each do |i| #l'étoile au "tr[]" prend toutes les valeurs de la colonne
    bourse.push (i.content)
  end
  return bourse
end

def value(link)
  price = []
  link.xpath('/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[*]/td[5]/div/a/span').each do |j|
    price.push (j.content)
  end
  return price
end

def result(link)
  result_crypto = name(link)
  result_value = value(link)
  result = Hash[result_crypto.zip(result_value)]
  return result
end

puts result(page)













