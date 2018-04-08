class Schedule
  attr_accessor :activities

  def initialize
   @activities = []
  end

  def done?
    activities.empty?
  end

end