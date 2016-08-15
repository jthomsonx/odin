module Enumerable

	def my_each
		return self unless block_given?
		i = 0
		while i < self.size
			yield(self[i])
			i += 1
		end
		self
	end
	[1,2,3,4,5].my_each {|x| puts x}

	def my_each_with_index
		return self unless block_given?
		i = 0
		while i < self.size
			yield(self[i], i)
			i += 1
		end
		self
	end
	["A","B","C","D","E"].my_each_with_index {|x,y| puts "#{x}[#{y}]"}

	def my_select
		return self unless block_given?
		result_array = []
		self.my_each do |i|
			result_array << i if yield(i)
		end
		result_array
	end
	[1,2,3,4,5].my_select { |x| puts x }

	def my_all?
		result = true
		self.my_each do |i|
			if block_given?
			result = false unless yield(i)
			end
		end
		print result
	end
	["a","b","c"].my_all? { |x| x.size == 1 }
	puts ("")

	def my_any?
		result = false
		self.my_each do |i|
			if block_given?
				result = true if yield(i)
			elsif i != nil
				result = true
			end
		end
		print result
	end
	["a","bb","c"].my_any? { |x| x.size == 2 }
	puts ("")

	def my_none?
		result = true
		self.my_each do |i|
			if block_given?
				result = false if yield(i)
			elsif i != nil
				result = false
			end
		end
		print result
	end
	["a","bb","c"].my_none? { |x| x.size == 2 }
	["a","bb","c"].my_none? { |x| x.size == 3 }
	puts ("")

	def my_count
		count = 0
		self.my_each do |i|
			if block_given?
				count += 1 if yield(i)
				else
				count += 1
			end
		end
		print count
	end
	[1,2,3,4,5].my_count
	puts ("")

	def my_map
		new_array = []
		self.my_each do |i|
			if block_given?
				new_array << yield(i)
			else
				new_array << i
			end
		end
		print new_array
	end
	[1,2,3,4,5].my_map { |x| x*2 }
	[5,6,7,8].my_map
	puts ("")

	def my_inject
		
	end

end