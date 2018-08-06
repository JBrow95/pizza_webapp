def size()
	["small", "medium", "large"]
end

def crust()
	['thin', 'pan']
end

def meats()
	['none', 'bacon', 'ham', 'pepperoni', 'sausage']
end

def veggies()
	['tomatoe', 'onion', 'peppers', "none"]
end

def order(crust, veggies, meats, size) 
	price = 0
	size_choice = size().index(size)
	crust_choice = crust().index(crust)
	veg_choice = veggies().index(veggies)
	meat_choice = meats().index(meats)
	c = crust()[crust_choice]
	v = veggies()[veg_choice]
	m = meats()[meat_choice]
	s = size()[size_choice]
	if s == "small"
		price += 5.00
	elsif s == "medium"
		price += 8.00
	else
		price += 10.00
	end
	price
	order = "Size:  #{s.capitalize}<br>Crust:  #{c.capitalize}<br>Vegetables:  #{v.capitalize}<br>Toppings:  #{m.capitalize}<br>Price: #{price}"
end

