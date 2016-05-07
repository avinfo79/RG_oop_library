require_relative 'store.rb'
require_relative 'reader.rb'
require_relative 'book.rb'
require_relative 'order.rb'
require_relative 'author.rb'

class Library
  include Store
  
  attr_accessor :books, :authors, :readers, :orders

  def initialize(librrary_storage)
    @store=Storage.new(librrary_storage)
    @sections={'@books': :books, '@authors': :authors, '@readers': :readers, '@orders': :orders}
    load
  end

  def load
      @sections.each do |k,v| 
      instore=@store.get_key(v)
      instore.nil? ? self.instance_variable_set(k, []) : self.instance_variable_set(k, instore) 
    end
  end

  def save
      @sections.each do |k,v| 
      @store.save_key(v, self.instance_variable_get(k))
    end
  end

  def add(section, obj)
    if section.include? obj 
      puts "Allredy in librrary" 
    else 
      section<<obj 
      return obj      
    end
  end
  
  def who_offen_takes_book
    puts "Offen takes book: #{max_group_by(:reader,1)[0][0] }"
  end

  def most_popular_book
    puts "Most popular book: #{max_group_by(:book,1)[0][0]} "
  end

  def one_of_three
    puts "Three most popular book readers count: #{cnt_reader_three_most_popular} "
  end

  def cnt_reader_three_most_popular
    max_group_by(:book, 3).map {|k,v| v[0].reader }.uniq.count
  end

private

  def max_group_by(condition, limit)
    @orders.group_by(&condition).max_by(limit) { |k,v| v.length }
  end

end
