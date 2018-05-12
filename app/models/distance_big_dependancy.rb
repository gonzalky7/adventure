class DistanceBigDependancy

  def initialize
    @european_swollow_time = 2
    @african_swollow_time = 3
  end

  def compare_time_by_swollow
    sleep(@european_swollow_time +
      @african_swollow_time)
  end

  def execute
    compare_time_by_swollow
  end

end
