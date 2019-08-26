class Api::AppointmentsController < ApplicationController
  def index
    if current_user
      @appointments = current_user.appointments #.where(status: true)
    elsif current_professional
      @appointments = current_professional.appointments #.where(status: true)
    else
      @appointments = []
    end
    render "index.json.jb"
  end

  def create
    @appointment = Appointment.new(
      user_id: current_user.id,
      professional_id: params[:professional_id],
      service_id: params[:service_id],
      start_datetime: params[:start_datetime],
      end_datetime: params[:end_datetime],
      status: true,
    )
    @appointment.save
    render "show.json.jb"
  end

  def update
    @appointment = Appointment.find_by(id: params[:id])
    @product.start_datetime = params[:start_datetime] || @product.start_datetime
    @product.end_datetime = params[:end_datetime] || @product.end_datetime

    if @appointment.save
      render json: { message: "Your appointment has been created successfully" }
    else
      render json: { errors: @appointment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    if current_user
      @appointment = current_user.appointments.find_by(id: params[:id])
    elsif current_professional
      @appointment = current_professional.appointments.find_by(id: params[:id])
    else
      @appoints = {}
    end
    render "show.json.jb"
  end

  def destroy
    appointment = current_user.appointments.find_by(id: params[:id], status: false)
    appointment.status = "removed"
    appointment.save
    render json: { message: "Appointment successfully removed!" }
  end
end
