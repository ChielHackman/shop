class Store

  def initialize
    @catalogue = []
    @total = 0
    @shoppingcart = []
  end

  def add(product)
    @catalogue.push(product)
  end

  def inventory
    @catalogue.each do |product|
      puts "#{product.id}: #{product.name} cost: €#{product.price},-"
    end
  end

  def addshoppingcart(index)
    @shoppingcart.push(@catalogue[index])
    @total = @total + @catalogue[index].price
  end

  def showshoppingcart
    puts "This is in your shoppingcart:"
    @shoppingcart.each do |product|
      puts "#{product.name}"
    end
      puts "Total cost:"
      puts "€#{@total},-"
      menu
  end

  def menu
    puts "Choose a phone you want to buy:"
    puts ""
    inventory
    puts "5: Look in my shoppingcart"
    puts "6: Go further with payment €#{@total},-"
    puts "Please select a phone or make another choice (1/6)"
    product_id = gets.chomp.to_i
      if product_id == 6
        cashout
      elsif product_id < 5
        puts ""
        puts "Product will be delivered in:"
        puts @catalogue[product_id - 1].delivery
        addshoppingcart(product_id - 1)
        puts ""
        showshoppingcart
      elsif product_id == 5
        showshoppingcart
      else
        puts "Invalid input."
        menu
      end
  end

  def cashout
    puts "Thanks for shopping."
    puts ""
    puts "Totaal price: €#{@total},-"
    puts ""
    puts "See you next time :)"
    puts ""
    menu
  end
end
