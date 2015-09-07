require "rspec/expectations"

RSpec.configure do |config|

	config.after(:each) do
	    puts "after each"
	end

	describe "after each scenario" do
	  

	  example "after callback" do
	  end
	end
end