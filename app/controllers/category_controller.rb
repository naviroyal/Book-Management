class CategoryController < ApplicationController

    def save
        category = Category.new
        category.assign_attributes(category_params)

        if category.save
            render json: category, status:200
        else 
            render json: "category not saved"
        end
    end

    def get_list_of_categories
        categories = Category.all()
        render json: categories, status: 200
    end


    private

    def category_params
        params.require("category").permit(
            :name
        )
    end

end