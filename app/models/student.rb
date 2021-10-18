class Student < ApplicationRecord
  belongs_to :school
  belongs_to :group, optional: true
  belongs_to :siblinghood, optional: true
  has_many :addresses, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :addresses, :allow_destroy => true
  has_many :historics, dependent: :destroy
  has_and_belongs_to_many :contacts
  has_and_belongs_to_many :allergies

  after_destroy :check_alone_sibling


  private

    # After destroying a student, check if a sibling is left alone in the siblinghood 
    # and destroy the siblinghood if so
    def check_alone_sibling
      self.siblinghood.destroy if self.siblinghood && self.siblinghood.students.count == 1
    end

end
