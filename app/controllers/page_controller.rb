class PageController < ApplicationController

before_action :authenticate_model!, only: [:contact]
  def index
  end

  def contact
  end

end
