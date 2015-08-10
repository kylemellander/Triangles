require 'sinatra'
require 'sinatra/reloader'
require './lib/triangles'
also_reload 'lib/**/*.rb'

get ('/') {
  erb(:index)
}

get ('/result') {
  sides = [params.fetch('side_a'), params.fetch('side_b'), params.fetch('side_c')].sort_by(&:to_i)
  @side_a = sides[0]
  @side_b = sides[1]
  @side_c = sides[2]
  @triangle = Triangle.new(@side_a, @side_b, @side_c)
  @triangle_type = @triangle.triangle_type()
  @height = @triangle.height()
  @width_1 = @triangle.width_1()
  @width_2 = @triangle.width_2()
  erb(:triangle)
}
