class Doctor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointments.all.select{|appt| appt.doctor == self}
  end

  def patients 
    Appointments.map{|appt| appt.patient}
end
