class Patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  attr_accessor :name, :appointments

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
