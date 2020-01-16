require 'rails_helper'

describe Project do
  it { should have_and_belong_to_many :employees }

  it { should validate_presence_of :proj_name }
  it { should validate_length_of(:proj_name).is_at_most(76) }
  it("titleizes the name of a project") do
    project = Project.create({proj_name: "operations"})
    expect(project.proj_name()).to(eq("Operations"))
  end
end
