require 'van'

describe Van do
	
	let(:van) {Van.new}
	let(:bike) {double :bike}

	it 'should know when it has received notification' do
		van.notification!
		expect(van).to be_notified
	end

	xit 'should collect a bike after notification' do

	end

end