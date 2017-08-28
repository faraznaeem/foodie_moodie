FactoryGirl.define do
  factory :dish do
    title 'MyString'
    description 'MyText'
    price 1
    restaurant
    dish_category DishCategory.first
  end
end
