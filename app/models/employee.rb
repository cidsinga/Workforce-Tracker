class Employee < ApplicationRecord
  has_and_belongs_to_many(:projects)
  belongs_to :division
  validates :name, presence: true
  validates_length_of :name, maximum: 76
  before_save(:titleize_employee)

  private
  def titleize_employee
    self.name = self.name.titleize
  end

end
