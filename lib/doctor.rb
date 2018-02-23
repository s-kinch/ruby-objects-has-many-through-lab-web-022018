class Doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  attr_accessor :name, :appointments

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
