class Author < ApplicationRecord
    has_many :books, autosave: true, dependent: :destroy
end
