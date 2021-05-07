class ProfilController < ApplicationController
  def index
    @dear_mes = current_user.dear_mes if current_user
  end
end
