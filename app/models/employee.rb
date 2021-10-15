class Employee < ApplicationRecord
  has_and_belongs_to_many :schools
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :contacts
  has_many :addresses, as: :addressable, dependent: :destroy
end
