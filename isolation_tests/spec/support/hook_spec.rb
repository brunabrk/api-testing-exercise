require 'airborne'

describe "around filter" do

 url = 'http://localhost:3000/api/flights/'
  after(:each) do
    flights = JSON.parse(get url)

    flights.each do |flight|
    	delete url + "#{flight['id']}"
    end

  end

  it "gets run in order" do
    puts "Removing data"
  end
end