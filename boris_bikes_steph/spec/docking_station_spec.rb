require 'docking_station'

describe DockingStation do 

	let(:docking_station) {DockingStation.new}
	let(:bike) {double :bike, dock!: true}
	let(:van) {double :van}

	it 'should detect when the bike is broken after docking' do
		allow(bike).to receive(:broken?) { true }
		docking_station.dock(bike)
		expect(docking_station).to have_broken(bike)
	end

	it 'should tell the van if it has a broken bike' do
		docking_station.dock(bike)
		allow(docking_station).to receive(:has_broken?) { true }
		allow(van).to receive(:notification!)
		docking_station.notify_van(van, bike)
		expect(docking_station).to be_empty
	end

end
