class Api::ProfessionalsController < ApplicationController
  def index
    @professionals = Professional.all
    render "index.json.jb"
  end

  # def index
  #   @carted_products = current_user.carted_products.where(status: "carted")
  #   render "index.json.jb"
  # end

  def create
    professional = Professional.new(
      service: Service.find_by(name: params[:service]),
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      address: params[:address],
      price: params[:price],
      license_number: params[:license_number],
    )
    if professional.save
      render json: { message: "Professional created successfully" }, status: :created
    else
      render json: { errors: professional.errors.full_messages }, status: :bad_request
    end
  end

  def show
    # validate that a professional id is present in the database, then find all the appointments of this professional
  end
end
