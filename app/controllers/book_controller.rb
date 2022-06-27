class BookController < ApplicationController
    
    def save
        book = Book.new
        book.assign_attributes(book_params)
        if book.save
            render json: book,  status: 200
        else 
            render json: "book not saved"
        end
    end

    def get_most_books_sold_by_author
        author_id = Book.group(:authors_id).count(:authors_id).max_by(&:last).first
        books = Book.where(authors_id: author_id)
        if books
            render json:books, status: 200
        else
            render json: "No book found"
        end
    end

    def get_most_books_sold_by_categories
        category_id = Book.group(:categories_id).count(:categories_id).max_by(&:last).first
        books = Book.where(categories_id: category_id)
        if books
            render json:books, status: 200
        else
            render json: "No book found"
        end
    end

    def search_book
        book = Book.find(params[:book_id])
        if book
            render json: book, status: 200
        else
            render json: "No Book present with this id", status: 400
        end
    end

    def get_book_by_author
        book = Book.find_by(author_id: params[:author_id])
        if book
            render json: book, status: 200
        else
            render json: "No Book present for this author id", status: 400
        end
    end

    private
    def book_params
        params.require("book").permit(
            :title,
            :publisher,
            :publish_date,
            :categories_id,
            :authors_id,
            :sold_count,
            :price
        )
    end
end