require 'spec_helper'

describe Api::V1::ContactsController do

  describe "GET index" do
    let(:contact_keys) {
      ['id', 'first_name', 'last_name', 'full_name', 'city', 'country']
    }
    before do
      4.times { |t| FactoryGirl.create :contact }
      get :index, format: :json
    end

    it "should be ok" do
      response.should be_ok
    end

    it "returns data wth valid format" do
      body = JSON.parse(response.body)
      body['contacts'].first.keys.should == contact_keys
    end
  end
end
