class Student < ApplicationRecord
  belongs_to :school
  belongs_to :group
  belongs_to :siblinghood
end
