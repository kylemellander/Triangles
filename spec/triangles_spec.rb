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
  end
end
