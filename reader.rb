class Reader
  attr_accessor :name, :email, :city, :street, :house
 
  def initialize(name, email,  city, street, house)
     @name, @email, @city, @street, @house =  name, email, city, street, house
  end
  
  def to_s
    "#{@name} \n #{@email} \n #{@city} \n #{@street} \n #{@house}"
  end

  def ==(other)
    if other.is_a? Reader
      @email==other.email 
    else
      false
    end
  end

end
