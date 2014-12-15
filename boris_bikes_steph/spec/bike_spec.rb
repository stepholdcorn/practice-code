require 'bike'

describe Bike do

	let(:bike) {Bike.new}
	
	it 'should be able to be docked' do
		bike.dock!
		expect(bike).to be_docked
	end

	it 'should be able to be rented' do
		bike.rent!
		expect(bike).not_to be_docked
	end

	it 'should be able to be broken' do
		bike.break!
		expect(bike).to be_broken
	end

	it 'should be able to be fixed' do
		bike.fix!
		expect(bike).not_to be_broken
	end

end
