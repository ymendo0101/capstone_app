class Api::AppointmentsController < ApplicationController
  def index
    @appointments = current_user.appointments.where(status: "pending")
    render "index.json.jb"
  end

  def create
    @appointment = appointment.new(
      user_id: current_user.id,
      professional_id: params[:professional_id],
      start_datetime: params[:start_datetime],
      end_datetime: params[:end_datetime],
      status: "pending",
    )
    @appointment.save
    render "show.json.jb"
  end

  def destroy
    appointment = current_user.appointments.find_by(id: params[:id], status: "pending")
    appointment.status = "removed"
    appointment.save
    render json: { message: "Appointment successfully removed!" }
  end
end
