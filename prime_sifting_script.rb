require ('./lib/prime_sifting')


puts "Welcome to the Prime Number Sifter"
puts "please input an integer greater than 0"
input = gets.chomp.to_i
while input ==0 || input.class !=Integer
puts "I SAID AN INTEGER GREATER THAN ZERO!"
input = gets.chomp.to_i
end

session = Prime.new(input)
puts "you chose #{session.user_number}"
puts "here is a list of all the numbers up to your inputted number that
 are prime!"
session.prime_sifter