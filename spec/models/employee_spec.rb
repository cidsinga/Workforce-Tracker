require 'rails_helper'

describe Employee do
  it { should belong_to :division }
  it { should have_and_belong_to_many :projects }
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(76) }
  it("titleizes the name of a employee") do
    division = Division.create({div_name: 'test'})
    employee = division.employees.create({name: "operations"})
    expect(employee.name()).to(eq("Operations"))
  end
end
