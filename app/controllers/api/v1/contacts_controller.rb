class Api::V1::ContactsController < ApplicationController

  respond_to :json

  def index
    respond_with Contact.all
  end
end
