class Book < ActiveRecord::Base
    belongs_to :authors, class_name: "Author", foreign_key: "authors_id" 
    belongs_to :categories, class_name: "Category", foreign_key: "categories_id"
end
