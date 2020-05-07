require('rspec')
require('prime_sifting')

describe('Prime#create_range') do
  it ("will return a range starting at 2 to the number inputted by user") do
  new_number = Prime.new(6)
  expect(new_number.create_range).to(eq([2, 3, 4, 5, 6]))
  end
end

describe('Prime#odd_keeper') do
  it("will return an array with odd numbers") do
    new_array = Prime.new(10)
    new_array.create_range
    expect(new_array.odd_keeper).to(eq([3,5,7,9]))
  end
end

describe('Prime#three_x_reject#odd_keeper') do
  it("will return an array with all multiples of three removed") do
    new_array2 = Prime.new(20)
    new_array2.create_range
    expect(new_array2.three_x_reject).to(eq([2,4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20]))
  end
end

describe('Prime#three_x_reject#odd_keeper') do
  it("will return an array with all even numbers, and multiples of three removed") do
    new_array3 = Prime.new(20)
    new_array3.create_range
    new_array3.odd_keeper
    expect(new_array3.three_x_reject).to(eq([5, 7, 11, 13, 17, 19]))
  end
end

describe('Prime#five_x_reject#odd_keeper') do
  it("will return an array with all even numbers, multiples of three, and multiples of five removed") do
    new_array4 = Prime.new(30)
    new_array4.create_range
    new_array4.odd_keeper
    new_array4.three_x_reject
    expect(new_array4.five_x_reject).to(eq([7, 11, 13, 17, 19, 23, 29]))
  end
end

describe('Prime#five_x_reject#odd_keeper #three_x_reject #seven_x_reject') do
  it("will return an array with all even nbumbers, multiples of three, multiples of five, multiples of seven removed") do
    new_array5 = Prime.new(50)
    new_array5.create_range
    new_array5.odd_keeper
    new_array5.three_x_reject
    new_array5.five_x_reject
    expect(new_array5.seven_x_reject).to(eq([11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]))
  end
end

describe('Prime#prime_sifter')do
  it('will call all "sifting" methods to return a list of prime numbers lower than / including the user input') do
    new_array6 = Prime.new(50)
    expect(new_array6.prime_sifter).to(eq("2 3 5 7 11 13 17 19 23 29 31 37 41 43 47"))
  end
end

