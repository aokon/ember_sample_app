class Api::V1::SessionsController < ApplicationController

  def create
    AuthenticatorService.new(self).execute
  end

end
