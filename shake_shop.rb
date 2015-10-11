class Ingredient

  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

end

class MilkShake

  attr_reader :name, :base_price, :ingredients, :total_price_of_milkshake	

  def initialize(name)
  	@name = name
    @base_price = 3
    @ingredients = [ ]        
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  
   @total_price_of_milkshake = @base_price
   @ingredients.each do |ingredient|
    @total_price_of_milkshake += ingredient.price
   end  
   @total_price_of_milkshake
  end

end

class ShackShop

  def initialize(name)
  	@name = name 
  	@milkshakes = []           
  end

  def add_milkshake(milkshake)
    @milkshakes.push(milkshake)    
  end

  def display_milkshakes
  	puts @name
     for element in @milkshakes
      puts "Batido de #{element.name} ->  #{element.price_of_milkshake} EUR" 
     end
  end	
end

nizars_milkshake = MilkShake.new("Plátano")
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)


oreo_milkshake = MilkShake.new("Oreo")
galleta = Ingredient.new("Galleta", 5)
oreo_milkshake.add_ingredient(galleta)
oreo_milkshake.add_ingredient(chocolate_chips)



tienda = ShackShop.new("Tienda Clara del Rey")
tienda.add_milkshake(nizars_milkshake)
tienda.add_milkshake(oreo_milkshake)
tienda.display_milkshakes