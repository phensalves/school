require 'spec_helper'

RSpec.describe "classrooms/new", type: :view do
  before(:each) do
    assign(:classroom, Classroom.new(
      :students_id => 1,
      :courses_integer => 1
    ))
  end

  it "renders new classroom form" do
    render

    assert_select "form[action=?][method=?]", classrooms_path, "post" do

      assert_select "input#classroom_students_id[name=?]", "classroom[students_id]"

      assert_select "input#classroom_courses_integer[name=?]", "classroom[courses_integer]"
    end
  end
end
