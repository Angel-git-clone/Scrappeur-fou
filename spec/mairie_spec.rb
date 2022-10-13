require_relative ('../lib/mairie.rb')

describe "sparp city email" do
  # begin
    it "test url > email" do
    expect(mairie_95("http://www.annuaire-des-mairies.com/972/fort-de-france.html")).to eq("fdf.informatique@sasi.fr")
    expect(mairie_95("http://www.annuaire-des-mairies.com/14/deauville.html")).to eq("mairie@deauville.fr")
    expect(mairie_95("http://www.annuaire-des-mairies.com/972/macouba.html")).to eq("")
  # rescue =>e
    puts " We have an update to make, sorry for the inconvenience caused." 
    end

end
