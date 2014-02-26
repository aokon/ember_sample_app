require 'spec_helper'

describe AuthenticatorService do

  describe "#execute" do
    let(:user) { FactoryGirl.create(:user) }
    #TODO find other solution for testing this behaviour
    let(:auth_context) do 
      contr = Api::V1::SessionsController.new
      contr.stub(:params).and_return({})
      contr
    end
    
    subject { AuthenticatorService.new(auth_context) }

    context "user was found" do
      it "should call respond_with_token" do
        User.should_receive(:find_by).and_return(user)
        subject.should_receive(:respond_with_token).with(user)
        subject.execute
      end
    end

    context "user was not found" do
      it "should call render_error" do
        User.should_receive(:find_by).and_return(nil)
        subject.should_receive(:render_error)
        subject.execute
      end
    end
  end

end
