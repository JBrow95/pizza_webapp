def crust()
	crust = ['thin', 'pan']
end

def meats()
	m1 = ['none', 'bacon', 'ham', 'pepperoni', 'sausage']
end

def meats2()
	m2 = ['none', 'bacon', 'ham', 'pepperoni', 'sausage']
end

def veggies()
	vegs = ['tomatoe', 'onion', 'peppers', "none"]
end


	respons

p_price = 0.0
while response > 0 do 

	psize = ["small","medium","large"]

	puts "Choose size #{psize}"
	response2 = gets.chomp
	
	if response2 == "small"
		sprice = 4.99
		p_price = p_price + sprice
	elsif response2 == "medium"
		sprice = 9.99
		p_price = p_price + sprice
	elsif response2 == "large"
		sprice = 14.99
		p_price = p_price + sprice
	else
		sprice = 0.0
	end

	rpizza() 
	response -= 1
end
	
def rpizza()
	puts "Here is a random pizza!"
	puts "#{crust}#{meats}#{meats2}#{veggies}#{fruits}"
end


	puts "Would you like any of these extra Toppings? [cheese] [bacon] [pepperoni] [peppers]"

	response = gets.chomp
	
t_price = 0.0

case response.downcase
when "cheese"
	t_price = t_price + 0.49
	puts "Added extra Cheese"
when "bacon"
	t_price = t_price + 0.69
	puts "Added extra Bacon"
when "pepperoni"
	t_price = t_price + 0.39
	puts "Added extra Pepperoni"
when "peppers"
	t_price = t_price + 0.59
	puts "Added extra Peppers"
else
	puts "Sorry we cant give you extra of that item!"
end
	
	

	total_p = p_price + t_price * 1.06

	puts "Would you like Delivery? (y/n)?"
		ans = gets.chomp

	d_charge = 2.99
	

	t_d_charge = total_p + d_charge * 1.06

	if ans == "y"
		puts "On its Way!"
		puts "Your total is $#{t_d_charge.round(2)}"
	elsif ans == "n"
		puts "Your total is $#{total_p.round(2)}"
	else
		puts "Error please reorder"
	end