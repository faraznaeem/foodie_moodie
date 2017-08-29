require 'rails_helper'

RSpec.describe DishCategory, type: :model do
  it { is_expected.to have_db_column :name }
  it { is_expected.to have_db_column :description }
end
