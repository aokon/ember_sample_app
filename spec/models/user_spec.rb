require 'spec_helper'

describe User do

  describe "token!" do
    let(:user) { FactoryGirl.create :user }
    it "should change user token" do
      user.token!
      user.token.should match(/\S{32}/)
    end
  end
end
