class Patient

  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_instance)
    appointments << appointment_instance
    appointment_instance.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    appointments.collect do |appt_instance|
      appt_instance.doctor
    end
  end
end
