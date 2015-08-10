require('triangles')
require('rspec')

describe(Triangle) do
  describe('#triangle?') do
    it('determines whether sides make a triangle') do
      new_triangle = Triangle.new(3, 3, 3)
      expect(new_triangle.triangle?()).to(eq(true))
    end
  end
end
