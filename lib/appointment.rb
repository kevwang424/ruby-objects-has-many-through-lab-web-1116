class Appointment

  attr_reader :date, :doctor
  attr_accessor :patient

  def initialize(date, doctor_instance)
    @date = date
    @doctor = doctor_instance
    doctor_instance.add_appointment(self)
  end

end
