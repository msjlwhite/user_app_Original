require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :username => "Username",
        :fullname => "Fullname",
        :comments => "Comments"
      ),
      User.create!(
        :username => "Username",
        :fullname => "Fullname",
        :comments => "Comments"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
  end
end
