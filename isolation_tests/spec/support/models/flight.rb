class Flight 
	def self.build_flight(attrs = {})
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

		}.merge(attrs)
	end
end
