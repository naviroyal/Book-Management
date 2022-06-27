class Category < ActiveRecord::Base
    has_many :books, autosave: true, dependent: :destroy
end
