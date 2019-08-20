class Api::AppointmentsController < ApplicationController
  def index
    if current_user
      @appointments = current_user.appointments.where(status: true)
    elsif current_professional
      @appointments = current_professional.appointments.where(status: true)
    end
    render "index.json.jb"
  end

  def create
    @appointment = appointment.new(
      user_id: current_user.id,
      professional_id: params[:professional_id],
      start_datetime: params[:start_datetime],
      end_datetime: params[:end_datetime],
      status: true,
    )
    @appointment.save
    render "show.json.jb"
  end

  def show
    @appointment = current_user.appointments.find_by(id: params[:id])
    render "show.json.jb"
  end

  def destroy
    appointment = current_user.appointments.find_by(id: params[:id], status: false)
    appointment.status = "removed"
    appointment.save
    render json: { message: "Appointment successfully removed!" }
  end
end
