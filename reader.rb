class Reader
  attr_accessor :name, :email, :city, :street, :house
 
  def initialize(name, email,  city, street, house)
    @email, @name,  @city, @street, @house = email, name, city, street, house
  end
  
  def to_hash
  	{@email =>[@name, @city, @street, @house]}
  end  

  def to_s
  	 "#{@email} \n #{@name} \n #{@city} \n #{@street} \n #{@house}"
  end

  def ==(other)
    if other.is_a? Reader
      @email==other.email 
    else
      false
    end
  end

end
