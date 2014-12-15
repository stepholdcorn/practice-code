require 'docking_station'

describe DockingStation do 

	let(:docking_station) {DockingStation.new(:capacity => 6)}
	let(:bike) {double :bike, dock!: true, rent!: true}
	let(:van) {double :van}

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

	it 'should detect when the bike is broken after docking' do
		allow(bike).to receive(:broken?) { true }
		docking_station.dock(bike)
		expect(docking_station).to have_broken(bike)
	end

	it 'should tell the van if it has a broken bike' do
		docking_station.dock(bike)
		allow(docking_station).to receive(:has_broken?) { true }
		allow(van).to receive(:notification)
		docking_station.notify_van(van, bike)
		expect(docking_station).to be_empty
	end

end
