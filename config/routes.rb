Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  scope :api do
    scope:category do
      post "/" => "category#save"
      get "/" => "category#get_list_of_categories"
    end

    scope:author do
      post "/" => "author#save"
      get "/" => "author#get_all_authors"
    end

    scope:book do
      post "/" => "book#save"
      get "/search/:book_id" => "book#search_book"
      get "/search/:author_id" => "book#get_book_by_author"
      get "/most_books_sold_by_author" => "book#get_most_books_sold_by_author"
      get "/most_books_sold_by_category" => "book#get_most_books_sold_by_categories"
    end
  end
end
