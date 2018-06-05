require 'rails_helper'

RSpec.describe User, type: :user do
  it "user be valid" do
    @user = create(:user)
    expect(@user).to be_valid
  end
  it "not unique username not valid" do
    @user = create(:user, username:"CaroAssadi", email:"user1@miuandes.cl", password:"123456" )
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end
  it "not unique mail not valid" do
    @user = create(:user, email:"aa@miuandes.cl")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end
  it "longer than 20 characters username not to be valid" do
    @user = build(:user, username: "aaaaaaaaaaaaaaaaaaaaaaaaa")
    expect(@user).to_not be_valid

  end

end