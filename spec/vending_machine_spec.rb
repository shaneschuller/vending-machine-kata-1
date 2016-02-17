require 'vending_machine'
Rspec.describe VendingMachine do

	it "Accept Coins and Updates Display" do
		subject.insert '5'
		expect(subject.display).to eq '5 cents'
	end

end