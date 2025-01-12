require 'rails_helper'

RSpec.describe "histories/new", type: :view do
  before(:each) do
    assign(:history, History.new(
      :thing => nil,
      :description => "MyString",
      :text => "MyString"
    ))
  end

  it "renders new history form" do
    render

    assert_select "form[action=?][method=?]", histories_path, "post" do

      assert_select "input[name=?]", "history[thing_id]"

      assert_select "input[name=?]", "history[description]"

      assert_select "input[name=?]", "history[text]"
    end
  end
end
