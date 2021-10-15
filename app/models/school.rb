class School < ApplicationRecord
  has_and_belongs_to_many :employees
  has_many :groups, dependent: :destroy
  has_many :students, dependent: :destroy
  has_many :addresses, as: :addressable, dependent: :destroy
end
