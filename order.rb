class Order
  attr_accessor :book, :reader, :date
 
  def initialize(book, reader, date)
    @book, @reader, @date = book, reader, date
  end

  def to_s
  	"#{@book} \n #{@reader} \n #{date}"
  end

end
