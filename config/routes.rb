Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/customers", to: "customers#index"
#GET /customers, #index


get 'movies', to:'movies#index', as: 'movies'
# GET /movies, #index

get 'movies/:title', to:'movies#show', as: 'movie'
# GET /movies/:title #show
# params: title

post 'rentals/:title/check-out', to: 'rentals#checkout', as: 'new_rental'
# POST /rentals/:title/check-out
# params: title
# request_body: customer_id, due_date

post 'rentals/:title/check-in', to: 'rentals#checkin', as: 'check_in_rental'
# POST /rentals/:title/check-in
# params: title
# request_body: customer_id

get 'rentals/overdue', to: 'rentals#overdue', as: 'overdue'
# GET /rentals/overdue

# get "/zomg", to: "movies#zomg"

end
