require 'airborne'
require_relative '../support/models/flight'

url = 'http://localhost:3000/api/flights'

describe 'POST' do
  it 'should create a new flight' do
    post url, 
    Flight.build_flight
	expect_status 200
	expect(json_body[:companhia]).to eq("Azul")
  end
end

describe 'PUT' do
	it 'should update a flight' do
		post url, Flight.build_flight({:id => 4})
	  	
	  	put url + '/4',
	  	{
	  		lugares:40,	
	  	}

	  	expect_status 200
	  	expect(json_body[:lugares]).to eq(40)
  	end
end

describe 'GET' do
  it 'should return flights' do
    get url
    expect_status 200
  end

  it 'should return a specific flight' do
  	post url, Flight.build_flight({:id => 5, :origem => "Rio de Janeiro"})
  	
  	get url + '/5'
  	
  	expect_status 200
  	expect_json_sizes(id: 8)
  	expect(json_body[:origem]).to eq("Rio de Janeiro")
  end
end

describe 'DELETE' do
	it 'should delete a flight' do
		post url, Flight.build_flight({:id => 3})
		
		delete url + '/3'
		expect_status 204
	end
end