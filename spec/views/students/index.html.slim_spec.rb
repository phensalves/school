require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :name => "MyText",
        :register_number => "MyText",
        :status => 1
      ),
      Student.create!(
        :name => "MyText",
        :register_number => "MyText",
        :status => 1
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
