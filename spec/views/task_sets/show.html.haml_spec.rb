require 'rails_helper'

RSpec.describe "task_sets/show", type: :view do
  before(:each) do
    @task_set = assign(:task_set, TaskSet.create!(
      :label => "Label",
      :task_template => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(//)
  end
end
