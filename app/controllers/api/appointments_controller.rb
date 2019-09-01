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
    if current_user
      @appointment = Appointment.new(
        user_id: current_user.id,
        service_id: params[:service_id],
        professional_id: params[:professional_id],
        # address: params[:address],
        start_datetime: Time.parse(params[:start_datetime]),
        end_datetime: Time.parse(params[:end_datetime]),
        appointment_status_id: 1,
        status: "pending",
      )
      if @appointment.save
        render "show.json.jb"
      else
        render json: { errors: @appointment.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "Only a user can create an appointment" }
    end
  end

  def update
    # if current_professional
    @appointment = Appointment.find_by(id: params[:id])
    # @appointment.appointment_status = params[:start_datetime] || @appointment.appointment_status

    @appointment.appointment_status_id = params[:appointment_status_id] || @appointment.appointment_status_id

    @appointment.status = params[:status] || @appointment.status
    if @appointment.save
      render json: { message: "The status of your appointment has been updated successfully" }
    else
      render json: { errors: @appointment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    if current_user
      @appointment = current_user.appointments.find_by(id: params[:id])
      # @current_user = current_user
    elsif current_professional
      @appointment = current_professional.appointments.find_by(id: params[:id])
    else
      @appointment = {}
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
