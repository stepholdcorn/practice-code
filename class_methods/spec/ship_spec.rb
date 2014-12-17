require 'ship'

describe Ship do 

	it 'should create a submarine of size 4' do
		expect(Ship.submarine.size).to eq(4)
	end
end