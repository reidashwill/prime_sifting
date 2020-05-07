class Prime
attr_accessor(:user_number, :num_range, :prime)

  def initialize(user_number)
    @user_number = user_number
    @num_range = num_range
    @prime = [2]
  end

  def create_range
    @num_range = *(2..@user_number)
  end

  def odd_keeper
    @num_range.reject! { |r| r.even? }
  end

  def three_x_reject
    @num_range.reject! { |r| r % 3 == 0 }
  end

  def five_x_reject 
    @num_range.reject! { |r| r % 5 == 0 }
  end

  def seven_x_reject
    @num_range.reject! { |r| r % 7 == 0}
  end

  def prime_sifter
    self.create_range
    self.odd_keeper
    self.three_x_reject
    self.five_x_reject
    self.seven_x_reject
    if @user_number >=7
      @num_range.unshift(2, 3, 5, 7)  
    elsif @user_number >= 5
      @num_range.unshift(2, 3, 5)
    elsif @user_number >= 3
      @num_range.unshift(2, 3) 
    elsif @user_number == 2
      @num_range.unshift(2)
    elsif @user_number == 1
      puts "1 is not a prime number!"
    else
      puts "something went wrong!  please try again"
    end
    puts @num_range.join(" ")
  end
end

