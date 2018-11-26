class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self 
    end 
  end

  def doctors
    self.appointments.select do |doc|
      doc.doctor
    end 
  end
  
  
  
def songs
    Song.all.select do |song|
      song.artist == self 
   end
  end 
  
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
  
  
  
  
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end
  
end



