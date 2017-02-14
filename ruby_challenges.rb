a= 12
b= 7

puts "The number #{a} is less than #{b}"


shows = [{"westworld" =>1}, {"bojack horseman" =>2}, {"parks&rec" =>3}, {"game of thrones" =>4},
  {"brooklyn 99" =>5}, {"silicone valley" =>6}, {"bobs burgers" =>7}, {"stranger things" =>8}, {"west wing" =>9},{"breaking bad" =>10}]

shows.select {|s|[0,1,2]}


shows = ["westworld", "bojack horseman", "parks&rec", "game of thrones",
  "brooklyn 99", "silicone valley", "bobs burgers", "stranger things", "west wing", "breaking bad"]


#Ruby Decision Structure Callenges
#1
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 ,16, 17, 18, 19, 20]


a.each do |element|
  puts element
end

for current_iteration_number in 1..20 do
  puts current_iteration_number
end


  for current_iteration_number in 1..20 do
    puts current_iteration_number
  end

21.times{ |x| puts x}

#one method to use to reverse a for loop
for number in (1..20).to_a.reverse
  puts number
end
#used to countdown for x number to y number (number can be whatever you choose to write )
20.downto(1) { |number|
  puts number
}

#2 Program that takes an argument and returns a valid or invalid
def num_valid(num)
    if num < 10
      puts "Valid"
    else
      puts "Invalid"
    end
end


#3
#taking the multiples of 3, 5, and 15 and printing Fizz, Buzz, or Fizzbuzz depending on command
for game in 1..100 do
  if game % 15 == 0
    puts "#{game} FizzBuzz"
  elsif game % 3 == 0
    puts "#{game} Fizz"
  elsif game % 5 == 0
    puts "#{game} Buzz"
  end
end


#story4
#getting the sum of two integers
def sum_these_numbers(num1, num2)
  num1 +  num2
end

#5
#having a number be classed as "even" or "odd"
def is_even(int)
  if int %2 ==0
    puts "even"
  else
    puts "odd"
  end
end

#6

foods = ["pizza", "wings", "ramen", "pho", "chorizo", "hummus"]

foods.each do |elements|
  puts elements.upcase #must use print, puts, or gets to see if the array was altered, will not show otherwise.
end

foods.map {|element| element.upcase} #this is the easiest
#works the same as above, only difference is it prints the changes as well.

#playing around with syntax but works the same
foods.map do |element|
  element.upcase
end

#playing around with syntax but works the same
foods.each {|element| puts element.upcase}

#7

def mother_ship(calculate)
  def calculate
    puts "Awesome"
  end
end

#must use an argument for the main method, otherwise won't work
def mother_ship(bob)
  def calculate(x)
    puts x + 2
  end
end


#8
month = gets.chomp
day = gets.chomp
year = gets.chomp

def valid_date(month, day, year)
  if month.to_i < 12
    puts "valid"
  else "invalid"
  end
  if day.to_i < 31
    puts "valid"
  else "invalid"
  end
  if year.to_i > 1900
    puts "valid"
  else "invlaid"
  end
end
# used .to_i to convert the strings for month,day,year to integers.

#9

user1 = gets.chomp
user2 = gets.chomp

def rps_game(user1,user2)
  if  user1 == "rock" && user2 == "scissors"
    puts "rock wins"
  elsif user1 == "rock" && user2 == "paper"
    puts "paper wins"
  elsif user1 == "rock" && user2 == "rock"
    puts "tie"
  end
  if  user1 == "paper" && user2 == "rock"
    puts "paper wins"
  elsif user1 == "paper" && user2 == "paper"
    puts "tie"
  elsif user1 == "paper" && user2 == "scissors"
    puts "scissors wins"
  end
  if  user1 == "scissors" && user2 == "rock"
    puts "rock wins"
  elsif user1 == "scissors" && user2 == "paper"
    puts "scissors wins"
  elsif user1 == "scissors" && user2 == "scissors"
    puts "tie"
  end
end
