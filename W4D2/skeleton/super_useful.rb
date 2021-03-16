# PHASE 2
def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  begin
    maybe_fruit = gets.chomp
    if maybe_fruit != "coffee"
     reaction(maybe_fruit) 
    else 
      FRUITS << "coffee"
      reaction(maybe_fruit) 
    end
  rescue 
      puts "OH NO! Our monster does not eat this fruit , but he loves coffee"
  retry 
      
  end
    
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise "please enter correct name" if name.length <= 0
    raise "please enter correct fav_pastime" if fav_pastime.length <= 0
    @name = name
    if yrs_known >= 5
      @yrs_known = yrs_known
    else
      raise "We can't be best friends if we don't know each other for at least 5 years"
    end
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


