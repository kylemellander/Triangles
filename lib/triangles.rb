class Triangle
  def initialize(side_a, side_b, side_c)
    triangle = [side_a, side_b, side_c].sort_by(&:to_i)
    @side_a = triangle[0]
    @side_b = triangle[1]
    @side_c = triangle[2]
  end

  def triangle?
    ((@side_a + @side_b) > @side_c) && ((@side_a + @side_c) > @side_b) && ((@side_b + @side_c) > @side_a)
  end

  def equilateral?
    triangle? && @side_a.==(@side_b) && @side_b.==(@side_c)
  end

  def isosceles?
    triangle? && equilateral? == false && (@side_a == @side_b || @side_b == @side_c || @side_a == @side_c)
  end

  def scalene?
    triangle? && isosceles? == false
  end

  def triangle_type
    if equilateral?
      "This is an equilateral triangle."
    elsif isosceles?
      "This is an isosceles triangle."
    elsif scalene?
      "This is a scalene triangle."
    else
      "This is not a triangle!"
    end
  end

  def area
    s = (@side_a + @side_b + @side_c) / 2
    Math.sqrt(s * (s - @side_a) * (s - @side_b) * (s - @side_c))
  end

  def height
    2 * area() / @side_c
  end

  def width_1
    @side_c - (Math.sqrt((@side_a ** 2) - (height ** 2)))
  end

  def width_2
    @side_c - width_1
  end
end
