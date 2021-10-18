class Contact < ApplicationRecord
  has_and_belongs_to_many :employees
  has_and_belongs_to_many :students
end
