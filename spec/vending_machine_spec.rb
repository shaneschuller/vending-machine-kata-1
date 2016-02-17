require 'vending_machine'
Rspec.describe VendingMachine do

	context 'accepted coins' do
		it 'accepts a nickel and updates display' do
			subject.insert '5'
			expect(subject.display).to eq '5 cents'
		end

		it 'accepts a dime and updates the display' do
			subject.insert '10'
			expect(subject.display).to eq '10 cents'
		end

		it 'accepts a quarter and updates the display' do
			subject.insert '25'
			expect(subject.display).to eq '25 cents'
		end

		it 'accepts multiple coin combination' do
			subject.insert '5'
			subject.insert '10'
			subject.insert '25'
			expect(subject.display).to eq '40 cents'
		end
	end

	context 'negative coin test case' do
		it 'reject penny and updates coin return' do
			subject.insert '1'
			expect(subject.display).to eq 'INSERT COIN'
			expect(subject.coin_return).to eq '1'
		end
	end

	it 'displays INSERT COIN when no coins are inserted' do
		expect(subject.display).to eq 'INSERT COIN'
	end

end