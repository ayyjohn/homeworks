require 'spec_helper'

RSpec.describe User, type: :model do

  subject(:user) do
    User.new(name: "swanson", password: "password")
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  it { should have_many(:subs) }
  it { should have_many(:user_votes) }
  it { should have_many(:comments) }

  describe "#is_password?" do
    it "returns true for a matching password" do
      expect(user.is_password?("flibble")).to be_falsey
    end

    it "returns false for a not matching password" do
      expect(user.is_password?("password")).to be_truthy
    end
  end

  describe "#reset_session_token!" do
    it "changes the user's session token" do
      old_session_token = user.session_token
      user.reset_session_token!
      expect(user.session_token).not_to eq(old_session_token)
    end

    it "returns the value of the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "::find_by_credentials" do
    before { user.save! }

    it "returns a user if one exists with the given credentials" do
      expect(User.find_by_credentials("alec", "password")).to be_truthy
    end

    it "returns nil if a user does not exist with the given credentials" do
      expect(User.find_by_credentials("alec", "FLIBBITIGBITY")).to be_falsey
    end
  end
end
