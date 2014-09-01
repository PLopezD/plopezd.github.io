  # U3.W7: Build an Electronic Grocery List!
  # https://github.com/Devbootcamp/phase-0-unit-3/tree/master/week-7/7-gps3.1
  
  # =begin
  # Learning Competencies:
  # - Implement a basic Ruby class and identify when to use instance variables
  # - Identify the attributes and methods of a class based on user stories
  # - Identify tradeoffs between simple OO design patterns
  
  # Summary
  # In this challenge, you will create an electronic grocery list command-line application. Show off the object-oriented design principles you learned last week. You should spend time discussing tradeoffs with different designs. This is your grocery list, so get creative and have fun, but also make it great code!
  
  # Release 0: User Stories
  # With your partner, talk about what you would like to do with your grocery list. Start each statement with "As a user, I want to ..." These are what we call "user stories."
  
  # Release 1: Pseudocode
  # What objects, classes, and methods will you need to do each of the things you identified in your user stories?
  
  # Release 2: Write Driver Code
  # Translate your pseudocode into driver code. Write driver code at the bottom (to call the method on the object).
  
  # Release 3: Initial Solution
  # Create your initial solution.
  
  # Release 4: Refactor your solution
  # With your partner, review the code. Is it DRY? Are the names good?
  
  # Release 5: Reflect
  # Copy your code from stypi into the our_solution.rb file. Then complete a reflection in the designated section.
  
  # Release 6: Push your changes to Github!
  
  # Release 6: Submit Feedback. 
  
  # =end
  
  # # ************************************ YOUR WORK GOES DOWN HERE ************************************ 
  
  # Your full names:
  # 1. Connor Stec
  # 2. Jayme McKiney
  # 3. Pablo Lopez Domowicz
   
  # User Stories (As many as you want. Delete the statements you don't need)
  # As a user, I want to add items to my grocery list.
  # As a user, I want to change the quantity of each item.
  # As a user, I want to mark items as checked.
  # As a user, I want to remove items.
  
   
   
  # Pseudocode
  # create class: Grocery_list
  # create hash: food
  # define method to add item & quantity to grocery list hash 
  # define method to remove item & quantity to grocery list hash 
  # define method to change the quantity (value) of each item in the hash
  # attr_reader :my_list
  # define hash :cart
  # attr_reader :cart 
  
  
  # Your fabulous code goes here....
  
  class Grocery_list
    attr_reader :my_list,:cart
    
    def initialize(starter_list={})
      @my_list = starter_list.clone
      @cart = {}
    end
    
    def add_item(item, quantity)
      my_list[item]=quantity
    end
    
    def remove_item(item)
      my_list.delete(item)
    end
    
    def change_quantity(item, quantity)
      add_item(item, quantity)
    end
    
    def add_to_cart(item)
      raise ArgumentError unless @my_list.include?(item)
      @cart.merge!(@my_list.select{|key, value| key==item})
      @my_list.delete(item)
      puts "#{item} has been added to the cart"
    end
    
    def show_list
      my_list.each do |key, value|
        p "#{key}: #{value}"
      end
    end
    
    def show_cart
      @cart.each do |key, value|
        p "#{key}: #{value}"
      end
    end
  end
  
  
  # DRIVER CODE GOES HERE. 
  def assert 
      if yield
          puts "P :)"
      else
          puts "F :("
      end
  end
  
   groceries = Grocery_list.new()
   groceries.add_item("potatoes", 5)
   groceries.add_item("chicken", 35)
   assert { groceries.my_list == {'potatoes' => 5, 'chicken' => 35} }
   groceries.remove_item("chicken")
   assert { groceries.my_list == {'potatoes' => 5} }
   begin
      groceries.add_to_cart("beef")
   rescue
      puts "raised an error"
   end
   assert {Grocery_list.instance_method(:add_to_cart).arity == 1}
   assert {Grocery_list.instance_method(:add_item).arity == 2}
  groceries.add_to_cart("potatoes")
  assert { groceries.cart == {'potatoes' => 5} }
  assert { groceries.my_list == {} }
  
   