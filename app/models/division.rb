class Division < ApplicationRecord
  has_many:employees, dependent: :destroy
  validates :div_name, presence: true
  validates_length_of :div_name, maximum: 76
  before_save(:titleize_division)


  private
  def titleize_division
    self.div_name = self.div_name.titleize
  end

end
