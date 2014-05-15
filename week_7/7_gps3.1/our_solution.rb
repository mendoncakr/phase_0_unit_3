# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Kenneth Mendonca
# 2. Amol Borcar
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add item to grocery list with desired quantity
# As a user, I want to delete items from the list
# As a user, I want to check items off the list
# As a user, I want to display the list with items purchased and not
 
# Pseudocode
# create new class for specific grocery item
# initialize item with name, quantity, and if purchased
# 
# create new class for the grocery list
# create methods for adding, deleting, and displaying items

 
# Your fabulous code goes here....

class GroceryItem
  attr_accessor :item_name, :quantity, :purchased

  def initialize(item_name, quantity, purchased = false)
    @item_name = item_name
    @quantity = quantity
    @purchased = purchased
  end

end

class GroceryList
	attr_accessor :list
    
  def initialize()
    @list = []
  end
    
    def add_item(*item)
      item.each { |item| list << item }
    end
    
    def delete_item(*item)
      item.each do |item|
        list.delete(item)
      end
    end
    
    def check_off(*item)
      item.each { |item| item.purchased = true }
    end
     
    def view_list
      p "The following items are in your list:"
      list.each do |item|
        if item.purchased
          puts "[x] " + item.item_name + ": " + item.quantity.to_s
        else
          puts "[ ]" + item.item_name + ": " + item.quantity.to_s
        end
      end
    end
    
end



# DRIVER CODE GOES HERE. 
 
banana = GroceryItem.new("Banana", 5)
apple = GroceryItem.new("Apple", 10)

list = GroceryList.new()
list.add_item(banana, apple)
list.view_list
list.check_off(banana)
list.view_list


 