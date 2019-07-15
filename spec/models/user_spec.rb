require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "creates a new user" do
    user = User.create(username: 'Successful')
    expect(user.username).to eq(user.username)
  end

end
