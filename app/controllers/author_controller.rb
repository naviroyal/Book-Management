class AuthorController < ApplicationController
    
    def save
        author = Author.new
        author.assign_attributes(author_params)

        if author.save
            render json: author, status:200
        else 
            render json: "author not saved"
        end
    end

    def get_all_authors
        authors = Author.all()
        render json: authors, status: 200
    end

    private
    def author_params
        params.require("author").permit(
            :name,
            :phn_no,
            :birth_date,
            :death_date
        )
    end
end