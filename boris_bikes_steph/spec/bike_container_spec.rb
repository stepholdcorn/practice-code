require 'bike_container'

class Container; include BikeContainer; end

describe BikeContainer do

	let(:docking_station) {DockingStation.new(:capacity => 6)}
	let(:bike) {double :bike, dock!: true, rent!: true}

	it 'should not have a bike on initialization' do
		expect(docking_station).to be_empty
	end

	it 'should dock a bike' do 
		docking_station.dock(bike)
		expect(docking_station).not_to be_empty
	end

	it 'should release a bike' do 
		docking_station.dock(bike)
		docking_station.release(bike)
		expect(docking_station).to be_empty
	end

	it 'should know when its full' do
		6.times { docking_station.dock(bike) }
		expect(docking_station).to be_full
	end

end