class Doctor

  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_instance)
    appointments << appointment_instance
  end

  def appointments
    @appointments
  end

  def patients
    appointments.collect do |appt_instance|
      appt_instance.patient
    end
  end

end
