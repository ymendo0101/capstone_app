class Api::ServicesController < ApplicationController
  def index
    @services = Service.all
    render "index.json.jb"
  end

  def show
    @service = Service.find_by(id: params[:id])
    render "show.json.jb"
  end
end
