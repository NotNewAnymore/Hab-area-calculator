class Layer
  def initialize (area, radius)
    @area = area
    @radius = radius
  end
  def getArea
    @area
  end
  def to_s
    "Area:#{@area}, radius:#{@radius}"
  end
end
