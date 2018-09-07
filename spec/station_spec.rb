require 'station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

    it "releases a bike when we ask it to" do
     expect(DockingStation.new.release_bike).to be_a_kind_of(Bike)
    end

    it "releases a working bike" do
      expect(DockingStation.new.release_bike.working?).to eq(true)
    end

    # we want to be able to dock Bike at DockingStation.new

    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
end
