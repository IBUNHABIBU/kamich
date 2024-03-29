require 'rails_helper'

RSpec.describe "ourservices/index", type: :view do
  before(:each) do
    assign(:ourservices, [
      Ourservice.create!(
        Title: "Title",
        description: "MyText"
      ),
      Ourservice.create!(
        Title: "Title",
        description: "MyText"
      )
    ])
  end

  it "renders a list of ourservices" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
