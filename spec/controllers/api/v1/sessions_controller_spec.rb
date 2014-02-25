require 'spec_helper'

describe Api::V1::SessionsController do

  describe "POST create" do
    let(:user) { FactoryGirl.create :user }

    context "valid authentication" do

      before { post :create,  username: user.name, password: user.password, format: :json }

      it "should be ok" do
        response.should be_ok
      end

      it "returns auth_token" do
        response_body = JSON.parse(response.body)
        response_body.keys.should include('auth_token')
      end
    end

    context "invalid authentication" do
      it "returns 401" do
        post :create, username: "dummyy", password: "", format: :json
        response.code.should == '401'
      end
    end
  end

end
