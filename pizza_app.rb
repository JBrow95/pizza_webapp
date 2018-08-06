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

def order(crust, veggies, veggies2, veggies3, veggies4, meats, size) 
	price = 0
	size_choice = size().index(size)
	crust_choice = crust().index(crust)
	veg_choice = veggies().index(veggies)
	veg_choice2 = veggies().index(veggies2)
	veg_choice3 = veggies().index(veggies3)
	veg_choice4 = veggies().index(veggies4)
	meat_choice = meats().index(meats)
	c = crust()[crust_choice]
	v = veggies()[veg_choice] || veggies()[veg_choice2]
	unless v == "none"
		price += 0.50
	end
	m = meats()[meat_choice]
	unless m == "none"
		price += 0.75
	end
	s = size()[size_choice]
	if s == "small"
		price += 8.00
	elsif s == "medium"
		price += 12.00
	else
		price += 15.00
	end
	price.to_s
	order = "Size:  #{s.capitalize}<br>Crust:  #{c.capitalize}<br>Vegetables:  #{v.capitalize}<br>Toppings:  #{m.capitalize}<br>Price: $#{price}"
end

