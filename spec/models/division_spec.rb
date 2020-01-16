require 'rails_helper'

describe Division do
  it { should have_many :employees }
  it { should validate_presence_of :div_name }
  it { should validate_length_of(:div_name).is_at_most(76) }
  it("titleizes the name of a division") do
    division = Division.create({div_name: "operations"})
    expect(division.div_name()).to(eq("Operations"))
  end
end
