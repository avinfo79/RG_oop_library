class Book 
  attr_accessor :title, :author
 
  def initialize(title, author)
    @title, @author=title, author.name 
  end

  def to_s
    "#{@title} \n #{@author}"
  end

  def ==(other)
    if other.is_a? Book
      @title == other.title && @author == other.author
    else
      false
    end
  end

end
