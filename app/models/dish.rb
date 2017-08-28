class Dish < ApplicationRecord
  belongs_to :restaurant
  belongs_to :dish_category
end
