require_relative 'library.rb'

lb=Library.new('lb')

begin 
lb.add(lb.authors, Author.new("F.Dostoevskiy","Fedor was born ...."))
lb.add(lb.authors, Author.new("F.Dostoevskiy","Fedor was born ...."))
lb.add(lb.authors, Author.new("L.N. Tolstoy","Lev was born ...."))

lb.add(lb.books, Book.new("Idiot", lb.authors[0]))
lb.add(lb.books, Book.new("Karamazov Bro.", lb.authors[0]))
lb.add(lb.books, Book.new("War and World", lb.authors[1]))
lb.add(lb.books, Book.new("Ana Karenina", lb.authors[1]))

lb.add(lb.readers, Reader.new('Alex', 'some1@mail', 'Dnepr','Central','1'))
lb.add(lb.readers, Reader.new('Dasha', 'some2@mail', 'Dnepr','Central','2'))
lb.add(lb.readers, Reader.new('Masha', 'some3@mail', 'Dnepr','Central','3'))
lb.add(lb.readers, Reader.new('Pit', 'some4@mail', 'Dnepr','Central','4'))

lb.add(lb.orders, Order.new(lb.books[0], lb.readers[0], DateTime.now.to_s))
lb.add(lb.orders, Order.new(lb.books[1], lb.readers[1], DateTime.now.to_s))
lb.add(lb.orders, Order.new(lb.books[2], lb.readers[2], DateTime.now.to_s))
lb.add(lb.orders, Order.new(lb.books[2], lb.readers[3], DateTime.now.to_s))
lb.add(lb.orders, Order.new(lb.books[2], lb.readers[0], DateTime.now.to_s))
lb.add(lb.orders, Order.new(lb.books[2], lb.readers[1], DateTime.now.to_s))
lb.add(lb.orders, Order.new(lb.books[3], lb.readers[2], DateTime.now.to_s))

lb.save()
end

puts lb.who_offen_takes_book
puts lb.most_popular_book 
puts lb.one_of_three
