JSON.parse(File.read('db/seeds/customers.json')).each do |customer|
  Customer.create!(customer)
end

JSON.parse(File.read('db/seeds/movies.json')).each do |movie|
  Movie.create!(movie)
end


Rental.create(customer_id: 20, movie_id: 20, due_date: Date.yesterday, checked_out: true)

Rental.create(customer_id: 21, movie_id: 21, due_date: Date.yesterday, checked_out: true)
