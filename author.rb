class Author
  attr_accessor :name, :bio
 
  def initialize(name, bio)
    @name, @bio= name, bio
  end

  def to_s
  	 "#{@name} \n #{@bio}"
  end

  def ==(other)
    if other.is_a? Author
      @name == other.name && @bio == other.bio
    else
      false
    end
  end

end
