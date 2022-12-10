class Book < ApplicationRecord
    has_many :book_authors
    has_many :authors, through: :book_authors

    # to sorting book by model attributes 
    def self.ransortable_attributes(_auth_object = nil)
        column_names - ['id','created_at', 'updated_at']
    end

    # to search book by model attributes
    def self.ransackable_attributes(_auth_object = nil)
        ransortable_attributes + _ransackers.keys
    end
end
