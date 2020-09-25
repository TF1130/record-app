class Record < ApplicationRecord
  has_many :breakfasts
  has_many :lunchs
  has_many :dinners
  has_many :coffeebreaks
end
