class Siblinghood < ApplicationRecord
  has_many :students, dependent: :nullify
end
