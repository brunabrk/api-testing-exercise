require 'airborne'


url = 'http://localhost:3000/api/flights'

describe 'POST' do
  it 'should create a new flight' do
    post url, 
	{
		id:2,
	    data_partida: "01-10-2016",
	    data_chegada: "12-10-2016",
	    numero:"2222",
	    origem:"Recife",
	    destino:"Porto Alegre",
	    duracao:6,
	    lugares:10,
	    companhia:"Azul"

	}
	expect_status 200
	expect(json_body[:companhia]).to eq("Azul")
  end
end

describe 'PUT' do
	it 'should update a flight' do
	  	put url + '/7',
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
  	get url + '/2'
  	expect_status 200
  	expect(json_body[:origem]).to eq("Recife")
  end
end

describe 'DELETE' do
	it 'should delete a flight' do
		delete url + '/2'
		expect_status 204
	end
end