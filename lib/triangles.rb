class Triangle
  def initialize(side_a, side_b, side_c)
    triangle = [side_a, side_b, side_c].sort_by(&:to_i)
    @side_a = triangle[0]
    @side_b = triangle[1]
    @side_c = triangle[2]
  end

  def triangle?
    (@side_a + @side_b) > @side_c
  end

  def equilateral?
    @side_a.==(@side_b) && @side_b.==(@side_c)
  end
end
