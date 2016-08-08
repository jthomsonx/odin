puts "Hello" # Initial test

def caesar_cipher(string, num)
	letters = string.split("")
	number = num.to_i
	letters.each do |x|
		if x =~ (/[a-zA-Z]/)
			number.times do
				x.next!
			end
			if x.length > 1
				x[0] = ''
			end
		end
	end
	puts letters.join("")
end
caesar_cipher("Hello my name is James", 5)

def stock_picker(array)
	buy = 1.0/0.0 # Sets buy price to infinity
	buy_day = 0
	sell = 0 
	sell_day = 0
	array.each_with_index do |price, index|
		if price < buy
			buy = price
			buy_day = index
		end
		if price > sell
			sell = price
			sell_day = index
		end
	end
	puts "Buy on day #{buy_day} at price '#{buy}'. Sell on day #{sell_day} at price '#{sell}'."
end
stock_picker([12,5,45,55,78,91,5,36,54,11,3,94,7])

def substrings(word, dict)
	sstr = Hash.new(0)
	word.downcase.split(/[^\w']+/).each do |w|
		dict.each { |ss| sstr[ss] += 1 if w[ss] }
	end
	puts sstr
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)