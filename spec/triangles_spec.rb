require('triangles')
require('rspec')

describe(Triangle) do
  describe('#triangle?') do
    it('returns true if sides make a triangle') do
      new_triangle = Triangle.new(3, 3, 3)
      expect(new_triangle.triangle?()).to(eq(true))
    end

    it('returns false if the sum of 2 sides is not greater than the 3rd') do
      new_triangle = Triangle.new(3, 2, 1)
      expect(new_triangle.triangle?()).to(eq(false))
    end

    it('returns false for equilateral? if sides are not equal') do
      new_triangle = Triangle.new(3, 2, 2)
      expect(new_triangle.equilateral?()).to(eq(false))
    end

    it('returns true for equilateral? if sides are equal') do
      new_triangle = Triangle.new(3, 3, 3)
      expect(new_triangle.equilateral?()).to(eq(true))
    end

    it('returns false for isosceles? if 2 sides are not equal') do
      new_triangle = Triangle.new(3, 4, 5)
      expect(new_triangle.isosceles?()).to(eq(false))
    end

    it('returns true for isosceles? if at least 2 sides are equal') do
      new_triangle = Triangle.new(3, 5, 5)
      expect(new_triangle.isosceles?()).to(eq(true))
    end

    it('returns true for scalene? if no sides are equal') do
      new_triangle = Triangle.new(3, 5, 4)
      expect(new_triangle.scalene?()).to(eq(true))
    end

    it('returns false for scalene? if any sides are equal') do
      new_triangle = Triangle.new(3, 5, 5)
      expect(new_triangle.scalene?()).to(eq(false))
    end
  end
end
