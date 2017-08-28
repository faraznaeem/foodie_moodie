Given(/^the following categories of dishes exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dish_category, hash)
  end
end

Given(/^the following dishes exist:$/) do |table|
  table.hashes.each do |hash|
    restaurant = Restaurant.find_by(name: hash[:restaurant])
    dish_category = DishCategory.find_by(name: hash[:dish_category])
    binding.pry
    dish_hash = hash.except!(:restaurant).merge!({restaurant: restaurant})
    dish_hash = dish_hash.except!(:dish_category).merge!({dish_category: restaurant})
    FactoryGirl.create(:dish, dish_hash)
  end
end

When(/^I visit "([^"]*)" page$/) do |page|
  case page
    when 'landing'
      visit root_path
    when 'restaurant'
      restaurant = Restaurant.find_by(name: 'Indian Fun')
      visit restaurant_path(restaurant)
    when 'Order'
      visit orders_path
  end
end

Given(/^the following categories exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dish_category, hash)
  end
end
