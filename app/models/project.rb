class Project < ApplicationRecord
  has_and_belongs_to_many(:employees)

  validates :proj_name, presence: true
  validates_length_of :proj_name, maximum: 76
  before_save(:titleize_project)


  private
  def titleize_project
    self.proj_name = self.proj_name.titleize
  end

end
