require 'product'

class VendingMachine

	ACCEPTED_COINS = ['5', '10', '25']
	ACCEPTED_PRODUCTS = [Product.new('chips', 50),
						 Product.new('candy', 65),
						 Product.new('cola', 100)]

	attr_accessor :display, :coin_return,:coins, :product

	def initialize
		self.display = 'INSERT COIN'
		self.coins = []
	end

	def insert coin
		if ACCEPTED_COINS.include? coin
			self.coins.push(coin)
			self.display = "#{total} cents"
		else
			self.coin_return = coin
		end
	end

	def button product
		self.display = 'THANK YOU'

		Product.new 'cola', 100
	end

	private
	def total
		#add up all of the values in the collection.
		self.coins.map(&:to_i).inject(:+)
	end

	def vend product_name

	end

	def insufficent_payment
		if self.display.start_with? 'PRICE'
			self.display == total ? "#{total} cents" : 'INSERT COIN'
			return false
		end
		true
	end
end