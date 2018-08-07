def size()
	["small", "medium", "large"]
end

def crust()
	['thin', 'pan']
end

def meats()
	['bacon', 'ham', 'pepperoni', 'sausage']
end

def veggies()
	['tomatoe', 'onion', 'peppers']
end

def order(crust, veggies, meats, size) 
	price = 0.00
	size_choice = size().index(size)
	crust_choice = crust().index(crust)
	c = crust()[crust_choice]
	s = size()[size_choice]
	if s == "small"
		price += 8.00
	elsif s == "medium"
		price += 12.00
	else
		price += 15.00
	end
	price.to_s
	order = "Size:  #{s.capitalize}<br>Crust:  #{c.capitalize}<br>Vegetables: "
	veggies.each_with_index do |v, i|
		order += "#{v.capitalize}"
		if i != veggies.length - 1
			order += ", "
		end
		price += 0.50
	end
	order += "<br>Meats: "
		meats.each_with_index do |n, idx|
		order += "#{n.capitalize}"
		if idx != meats.length - 1
			order += ", "
		end
		price += 0.75
	end

	order += "<br>Price: $#{price}"
	order
end

