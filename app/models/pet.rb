class Pet < ApplicationRecord
  PETS = ['dog', 'cat', 'turtle', 'hamster']

  validates :name, :address, presence: true
  validates :species, inclusion: { in: PETS }
end
