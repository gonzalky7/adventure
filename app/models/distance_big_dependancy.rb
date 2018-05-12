class DistanceBigDependancy
  @european_swollow_time = 2
  @african_swollow_time = 3

  def compare_time_by_swollow
    sleep(@european_swollow_time +
          @african_swollow_time)
  end

end
