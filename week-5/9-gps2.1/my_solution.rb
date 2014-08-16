# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 






# Our Refactored Solution


def bakery_num(num_of_people, fav_food)
# Hash that defines how many people can be fed by each item
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
# defines each quantity variable as 0, our starting food amount
  has_fave = false
# defining the favorite food as false to start 

  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
      fav_food = k
      end
    end
    if has_fave == false
      raise ArgumentError.new("You can't make that food")
  # .each_key iterates over my_list hash to say whether we can make the food specified,
  # if not, returns an argumenterror saying we can't make that food
      else
        fav_food_qty = my_list.values_at(fav_food)[0]
  #defines fav_food_quantity as the serving size of the favorite food
        if num_of_people % fav_food_qty == 0
          num_of_food = num_of_people / fav_food_qty
          return "You need to make #{num_of_food} #{fav_food}(s)."
    # if the number of people can be evenly divided by the serving size of the food
    # then serve the quantity = quotient
        else num_of_people % fav_food_qty != 0
          while num_of_people > 0
            if num_of_people / my_list["pie"] > 0
              pie_qty = num_of_people / my_list["pie"]
    # defines pie_quantity as a whole number = to the number of people that can be 
    #served by pie evenly
              num_of_people = num_of_people % my_list["pie"]
    # redefines 'num_of_ppl' to be equal to the remainder of people left after 
    # feeding a whole number of people with pie
            elsif num_of_people / my_list["cake"] > 0
              cake_qty = num_of_people / my_list["cake"]
        # defines pie_quantity as a whole number = to the number of people that can be 
    #served by cake evenly
              num_of_people = num_of_people % my_list["cake"]
     # redefines 'num_of_ppl' to be equal to the remainder of people left after 
    # feeding a whole number of people with cake
            else
              cookie_qty = num_of_people
              num_of_people = 0
    # the remainder of people after being fed pie or cake are fed cookies
            end
          end
            return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    #return a string stating how many of each food item we need to 
        end
      end
end






#DRIVER TEST CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver test code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 



