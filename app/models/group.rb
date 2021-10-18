class Group < ApplicationRecord
  belongs_to :school
  has_and_belongs_to_many :employees
  has_many :students, dependent: :nullify
end
